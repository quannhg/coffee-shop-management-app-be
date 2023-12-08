3)--func check CUA_HANG have enough Nguyen_lieu to cook
CREATE OR REPLACE FUNCTION check_du_nguyen_lieu(cua_hang_param UUID, ma_mon_param VARCHAR(30), so_luong_param INT = 1) RETURNS BOOLEAN AS $$
DECLARE
    nguyen_lieu mon_can_nguyen_lieu%ROWTYPE;
    so_luong_cua_hang INT;
BEGIN
	IF so_luong_param < 1 THEN
		RAISE EXCEPTION 'so_luong_param must be >= 1';
	END IF;
    FOR nguyen_lieu IN SELECT * FROM mon_can_nguyen_lieu WHERE ma_mon = ma_mon_param LOOP
        so_luong_cua_hang := 0;
        SELECT so_luong INTO so_luong_cua_hang FROM cua_hang_chua_nguyen_lieu ch_nl WHERE ch_nl.ma_nguyen_lieu = nguyen_lieu.ma_nguyen_lieu AND ch_nl.ma_cua_hang = cua_hang_param;
        IF so_luong_cua_hang IS NULL THEN
            RETURN FALSE;
        ELSIF nguyen_lieu.so_luong * so_luong_param > so_luong_cua_hang THEN
            RETURN FALSE;
        END IF;
    END LOOP;
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

SELECT check_du_nguyen_lieu('79f44967-7044-48f1-8b24-69386cc1b50a','0527-1351') as result;

SELECT *
FROM MON_CAN_NGUYEN_LIEU mnl
JOIN CUA_HANG_CHUA_NGUYEN_LIEU chnl ON mnl.Ma_nguyen_lieu = chnl.Ma_nguyen_lieu
WHERE Ma_mon = '0527-1351';

SELECT *
FROM CUA_HANG_CHUA_NGUYEN_LIEU
WHERE Ma_cua_hang = '79f44967-7044-48f1-8b24-69386cc1b50a' AND Ma_nguyen_lieu = ANY(ARRAY['57297-208','37808-425']);

-- func to calc number of table status
CREATE OR REPLACE FUNCTION calculate_table_status(cua_hang_id UUID)
RETURNS TABLE (
    so_ban_trong INT,
    so_ban_dat_truoc INT,
    so_ban_dang_ngoi INT
) AS $$
DECLARE
    ban_record RECORD;
BEGIN
    -- Khởi tạo giá trị ban đầu
    so_ban_trong := 0;
    so_ban_dat_truoc := 0;
    so_ban_dang_ngoi := 0;

    
    FOR ban_record IN (SELECT * FROM BAN WHERE Ma_cua_hang = cua_hang_id) LOOP
        
        IF ban_record.Trang_thai = 'Trong' THEN
            so_ban_trong := so_ban_trong + 1;
        ELSIF ban_record.Trang_thai = 'Dat Truoc' THEN
            so_ban_dat_truoc := so_ban_dat_truoc + 1;
        ELSIF ban_record.Trang_thai = 'Dang Ngoi' THEN
            so_ban_dang_ngoi := so_ban_dang_ngoi + 1;
        END IF;
    END LOOP;

    
    RETURN NEXT; --result: table of so_ban_trong, so_ban_dat_truoc, so_ban_dang_ngoi 
END;
$$ LANGUAGE plpgsql;

SELECT * FROM calculate_table_status('79f44967-7044-48f1-8b24-69386cc1b50a');

SELECT COUNT(b.Ma_ban) as so_ban_trong
FROM BAN as b
JOIN CUA_HANG as ch ON b.Ma_cua_hang = ch.Ma_cua_hang
WHERE ch.Ma_cua_hang = '79f44967-7044-48f1-8b24-69386cc1b50a' AND b.Trang_thai = 'Trong';

4)--Danh sách nhân viên của cửa hàng chỉ định bao gồm chức năng sắp xếp và filter
CREATE OR REPLACE FUNCTION get_employee_data (role_list varchar[], gender_list varchar[], order_attributes varchar[] = ARRAY['ho_va_ten', 'vai_tro', 'ngay_vao_lam', 'ngay_sinh', 'gioi_tinh'], order_directions varchar[] = ARRAY['ASC', 'ASC', 'ASC', 'ASC', 'ASC'], isSelectAll BOOLEAN = TRUE, ma_cua_hang UUID = '12345678-1234-1234-1234-123456789012') RETURNS TABLE (ma_nhan_vien UUID,
                                                                                                                                                                                                                                                                                                                                                                                          ho_va_ten varchar(30),
                                                                                                                                                                                                                                                                                                                                                                                                    avatarUrl varchar(400),
                                                                                                                                                                                                                                                                                                                                                                                                              ngay_sinh date, gioi_tinh varchar(10),
                                                                                                                                                                                                                                                                                                                                                                                                                                        sdt varchar(12),
                                                                                                                                                                                                                                                                                                                                                                                                                                            vai_tro varchar(30),
                                                                                                                                                                                                                                                                                                                                                                                                                                                    ngay_vao_lam date) AS $$
DECLARE
    valid_roles varchar[] := ARRAY['quản lý', 'bồi bàn', 'pha chế'];
    valid_genders varchar[] := ARRAY['Nam', 'Nu'];
    valid_order_attributes varchar[] := ARRAY['ho_va_ten', 'vai_tro', 'ngay_vao_lam', 'ngay_sinh', 'gioi_tinh'];
    valid_order_directions varchar[] := ARRAY['ASC', 'DESC', 'asc', 'desc'];
    query_string text;
    order_clause text := '';
    i int;
BEGIN
    -- Validate role_list
    IF NOT ARRAY(
        SELECT unnest(role_list)
        EXCEPT
        SELECT unnest(valid_roles)
    ) = '{}' THEN
        RAISE EXCEPTION 'Invalid role(s) provided';
    END IF;

    -- Validate gender_list
    IF NOT ARRAY(
        SELECT unnest(gender_list)
        EXCEPT
        SELECT unnest(valid_genders)
    ) = '{}' THEN
        RAISE EXCEPTION 'Invalid gender(s) provided';
    END IF;

    -- Validate order_attributes
    IF NOT ARRAY(
        SELECT unnest(order_attributes)
        EXCEPT
        SELECT unnest(valid_order_attributes)
    ) = '{}' THEN
        RAISE EXCEPTION 'Invalid order_by_attribute(s) provided';
    END IF;

    -- Validate order_directions
    IF NOT ARRAY(
        SELECT unnest(order_directions)
        EXCEPT
        SELECT unnest(valid_order_directions)
    ) = '{}' THEN
        RAISE EXCEPTION 'Invalid order direction(s) provided';
    END IF;

    IF array_length(order_attributes, 1) IS DISTINCT FROM array_length(order_directions, 1) THEN
        RAISE EXCEPTION 'Length of order attributes and order directions must be equal';
    END IF;


    FOR i IN 1..array_length(order_attributes, 1) LOOP
        IF i > 1 THEN
            order_clause := order_clause || ', ';
        END IF;
        order_clause := order_clause || quote_ident(order_attributes[i]) || ' ' || order_directions[i];
    END LOOP;


    query_string := '
        SELECT 
            NHAN_VIEN.Ma_nhan_vien,
            NHAN_VIEN.Ho_va_ten,
            NHAN_VIEN.avatarUrl,
            NHAN_VIEN.Ngay_sinh,
            NHAN_VIEN.Gioi_tinh::varchar,
            NHAN_VIEN.Sdt,
            NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG.Vai_tro,
            NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG.Ngay_vao_lam
        FROM 
            NHAN_VIEN
        LEFT JOIN 
            NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG
            ON NHAN_VIEN.Ma_nhan_vien = NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG.Ma_nhan_vien
        WHERE 
            (array_length($2, 1) IS NULL OR NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG.Vai_tro = ANY($2))
            AND (array_length($3, 1) IS NULL OR NHAN_VIEN.Gioi_tinh::text = ANY($3))'
        || CASE WHEN NOT isSelectAll THEN ' AND NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG.Ma_cua_hang = $1' ELSE '' END
        || (CASE WHEN order_clause <> '' THEN ' ORDER BY ' || order_clause ELSE '' END);


    RETURN QUERY EXECUTE query_string USING ma_cua_hang, role_list, gender_list;
END;
$$ LANGUAGE plpgsql;
 SELECT * FROM get_employee_data(
  ARRAY['quản lý', 'bồi bàn'],
  ARRAY['Nam'],
    ARRAY['ho_va_ten', 'ngay_sinh'],
    ARRAY['ASC', 'DESC']);


-- thủ tục trả về danh sách số lượng từng độ tuổi tại cửa hàng chỉ định sắp xếp theo độ tuổi tăng dần

CREATE OR REPLACE FUNCTION danh_sach_so_luong_theo_tuoi(input_Ma_cua_hang UUID)
RETURNS TABLE (
    Do_tuoi INT,
    So_luong INT,
    Gioi_tinh gioi_tinh
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        EXTRACT(YEAR FROM AGE(NOW(), Ngay_sinh))::INT AS Do_tuoi,
        COUNT(*)::INT AS So_luong,
        NHAN_VIEN.Gioi_tinh AS Gioi_tinh
    FROM---
        NHAN_VIEN
    INNER JOIN NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG nvch
        ON NHAN_VIEN.Ma_nhan_vien = nvch.Ma_nhan_vien
    WHERE
        nvch.Ma_cua_hang = input_Ma_cua_hang
    GROUP BY
        Do_tuoi, NHAN_VIEN.Gioi_tinh
    ORDER BY
        Do_tuoi;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM danh_sach_so_luong_theo_tuoi('79f44967-7044-48f1-8b24-69386cc1b50a');

SELECT EXTRACT(YEAR FROM AGE(NOW(), Ngay_sinh))::INT as tuoi, nv.gioi_tinh
FROM NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG nvch
JOIN NHAN_VIEN nv ON nvch.Ma_nhan_vien = nv.Ma_nhan_vien
WHERE nvch.Ma_cua_hang = '79f44967-7044-48f1-8b24-69386cc1b50a'
ORDER BY tuoi;

SELECT * FROM danh_sach_so_luong_theo_tuoi('307ac585-7af5-4642-80b2-99726495a060');
SELECT * FROM danh_sach_so_luong_theo_tuoi('d40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
