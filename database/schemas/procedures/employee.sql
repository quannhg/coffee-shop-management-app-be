-- Thủ tục thêm dữ liệu
CREATE OR REPLACE PROCEDURE them_nhan_vien(
    _ho_va_ten VARCHAR(30),
    _ngay_sinh DATE,
    _gioi_tinh VARCHAR(30),
    _dia_chi VARCHAR(30),
    _sdt VARCHAR(12),
    _so_tk_ngan_hang VARCHAR(30),
    _trinh_do_hoc_van VARCHAR(30),
    _ten_tai_khoan VARCHAR(30),
    _mat_khau_bam VARCHAR(60)
) AS $$
BEGIN
    -- Kiểm tra các ràng buộc dữ liệu
    IF _ngay_sinh IS NOT NULL AND NOT kiem_tra_tuoi(_ngay_sinh) THEN
        RAISE EXCEPTION 'Tuổi nhân viên phải lớn hơn 16 tuổi';
    END IF;

    IF _sdt IS NOT NULL AND NOT kiem_tra_sdt(_sdt) THEN
        RAISE EXCEPTION 'Số điện thoại không hợp lệ!';
    END IF;
    -- Thêm dữ liệu
    INSERT INTO NHAN_VIEN (
        Ho_va_ten,
        Ngay_sinh,
        Gioi_tinh,
        Dia_chi,
        Sdt,
        So_tk_ngan_hang,
        Trinh_do_hoc_van,
        Ten_tai_khoan,
        Mat_khau_bam
    ) VALUES (
        _ho_va_ten,
        _ngay_sinh,
        _gioi_tinh,
        _dia_chi,
        _sdt,
        _so_tk_ngan_hang,
        _trinh_do_hoc_van,
        _ten_tai_khoan,
        _mat_khau_bam
    );
END;
$$ LANGUAGE plpgsql;

-- Thủ tục sửa dữ liệu
CREATE OR REPLACE PROCEDURE sua_nhan_vien_qua_TK_va_MK(
    p_Ten_tai_khoan VARCHAR(30),
    p_Mat_khau VARCHAR(60),
    p_Ho_va_ten VARCHAR(30) = NULL,
    p_Ngay_sinh DATE = NULL,
    p_Gioi_tinh VARCHAR(30) = NULL,
    p_Dia_chi VARCHAR(30) = NULL,
    p_Sdt VARCHAR(12) = NULL,
    p_So_tk_ngan_hang VARCHAR(30) = NULL,
    p_Trinh_do_hoc_van VARCHAR(30) = NULL
)
AS $$
BEGIN
    -- Kiểm tra các ràng buộc dữ liệu
    IF p_ngay_sinh IS NOT NULL AND NOT kiem_tra_tuoi(p_ngay_sinh) THEN
        RAISE EXCEPTION 'Tuổi nhân viên phải lớn hơn 16 tuổi';
    END IF;

    IF p_sdt IS NOT NULL AND NOT kiem_tra_sdt(p_sdt) THEN
        RAISE EXCEPTION 'Số điện thoại không hợp lệ!';
    END IF;

    -- Cập nhật dữ liệu trong bảng
    UPDATE NHAN_VIEN
    SET
        Ho_va_ten = COALESCE(p_Ho_va_ten, Ho_va_ten),
        Ngay_sinh = COALESCE(p_Ngay_sinh, Ngay_sinh),
        Gioi_tinh = COALESCE(p_Gioi_tinh, Gioi_tinh),
        Dia_chi = COALESCE(p_Dia_chi, Dia_chi),
        Sdt = COALESCE(p_Sdt, Sdt),
        So_tk_ngan_hang = COALESCE(p_So_tk_ngan_hang, So_tk_ngan_hang),
        Trinh_do_hoc_van = COALESCE(p_Trinh_do_hoc_van, Trinh_do_hoc_van)
    WHERE
        (p_Ma_nhan_vien IS NULL OR Ma_nhan_vien = p_Ma_nhan_vien)
        AND Ten_tai_khoan = p_Ten_tai_khoan
        AND Mat_khau_bam = p_Mat_khau;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Không tìm thấy nhân viên với thông tin đăng nhập đã cung cấp!';
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE sua_nhan_vien_qua_ma_nhan_vien(
    p_Ma_nhan_vien UUID,
    p_Ho_va_ten VARCHAR(30) = NULL,
    p_Ngay_sinh DATE = NULL,
    p_Gioi_tinh gioi_tinh = NULL,
    p_Dia_chi VARCHAR(30) = NULL,
    p_Sdt VARCHAR(12) = NULL,
    p_So_tk_ngan_hang VARCHAR(30) = NULL,
    p_Trinh_do_hoc_van VARCHAR(30) = NULL,
    p_Ten_tai_khoan VARCHAR(30) = NULL,
    p_Mat_khau VARCHAR(60) = NULL
)
AS $$
BEGIN
    -- Kiểm tra các ràng buộc dữ liệu
    IF p_ngay_sinh IS NOT NULL AND NOT kiem_tra_tuoi(p_ngay_sinh) THEN
        RAISE EXCEPTION 'Tuổi nhân viên phải lớn hơn 16 tuổi';
    END IF;

    IF p_sdt IS NOT NULL AND NOT kiem_tra_sdt(p_sdt) THEN
        RAISE EXCEPTION 'Số điện thoại không hợp lệ!';
    END IF;

    -- Cập nhật dữ liệu trong bảng
    UPDATE NHAN_VIEN
    SET
        Ho_va_ten = COALESCE(p_Ho_va_ten, Ho_va_ten),
        Ngay_sinh = COALESCE(p_Ngay_sinh, Ngay_sinh),
        Gioi_tinh = COALESCE(p_Gioi_tinh, Gioi_tinh),
        Dia_chi = COALESCE(p_Dia_chi, Dia_chi),
        Sdt = COALESCE(p_Sdt, Sdt),
        So_tk_ngan_hang = COALESCE(p_So_tk_ngan_hang, So_tk_ngan_hang),
        Trinh_do_hoc_van = COALESCE(p_Trinh_do_hoc_van, Trinh_do_hoc_van),
        Ten_tai_khoan = COALESCE(p_Ten_tai_khoan, Ten_tai_khoan),
        Mat_khau_bam = COALESCE(p_Mat_khau, Mat_khau_bam)
    WHERE
        Ma_nhan_vien = p_Ma_nhan_vien;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Không tìm thấy nhân viên với mã nhân viên đã cung cấp!';
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE thay_doi_mat_khau_nhan_vien(
    p_Ten_tai_khoan VARCHAR(30),
    p_Mat_khau_hien_tai VARCHAR(60),
    p_Mat_khau_moi VARCHAR(60)
)
AS $$
BEGIN
    -- Kiểm tra mật khẩu mới phải khác mật khẩu cũ
    IF NOT KiemTraMatKhauMoi(p_Mat_khau_hien_tai, p_Mat_khau_moi) THEN
        RAISE EXCEPTION 'Mật khẩu mới phải khác mật khẩu cũ!';
    END IF;

    -- Cập nhật mật khẩu mới
    UPDATE NHAN_VIEN
    SET Mat_khau_bam = p_Mat_khau_moi
    WHERE Ten_tai_khoan = p_Ten_tai_khoan AND Mat_khau_bam = p_Mat_khau_hien_tai;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Không tìm thấy nhân viên với thông tin đăng nhập đã cung cấp!';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Thủ tục xóa dữ liệu
CREATE OR REPLACE PROCEDURE xoa_nhan_vien(_ma_nhan_vien UUID) AS $$
BEGIN
    DELETE FROM NHAN_VIEN WHERE Ma_nhan_vien = _ma_nhan_vien;
END;
$$ LANGUAGE plpgsql;

--Danh sách nhân viên của cửa hàng chỉ định bao gồm chức năng sắp xếp và filter
CREATE OR REPLACE FUNCTION get_employee_data
(
    role_list text[], 
    gender_list text[],
    order_attributes text[],
    order_directions text[],
    ma_cua_hang UUID
) RETURNS TABLE
(
    ma_nhan_vien UUID,
    ho_va_ten varchar(255),
    avatarUrl varchar(255),
    ngay_sinh date,
    gioi_tinh varchar(10),
    sdt varchar(20),
    vai_tro varchar(50),
    ngay_vao_lam date
) AS $$
DECLARE
    valid_roles text[] := ARRAY['quản lý', 'bồi bàn', 'pha chế'];
    valid_genders text[] := ARRAY['nam', 'nữ'];
    valid_order_attributes text[] := ARRAY['ho_va_ten', 'vai_tro', 'ngay_vao_lam', 'ngay_sinh', 'gioi_tinh'];
BEGIN
    -- Validate role_list
    IF NOT ARRAY(        SELECT unnest(role_list)
    EXCEPT
        SELECT unnest(valid_roles)
    ) = '{}' THEN
        RAISE EXCEPTION 'Invalid role(s) provided';
END
IF;

    -- Validate gender_list
    IF NOT ARRAY(    SELECT unnest(gender_list)
EXCEPT
    SELECT unnest(valid_genders)
) = '{}' THEN
        RAISE EXCEPTION 'Invalid gender(s) provided';
END
IF;

    -- Validate order_attributes
    IF NOT ARRAY(    SELECT unnest(order_attributes)
EXCEPT
    SELECT unnest(valid_order_attributes)
) = '{}' THEN
        RAISE EXCEPTION 'Invalid order_by_attribute(s) provided';
END
IF;

    -- Validate order_directions
    IF NOT ARRAY['ASC', 'DESC'] @> order_directions THEN
        RAISE EXCEPTION 'Invalid order_by_direction(s) provided';
END
IF;

    EXECUTE '
        SELECT 
            nhan_vien.ma_nhan_vien,
            nhan_vien.ho_va_ten,
            nhan_vien.avatarUrl,
            nhan_vien.ngay_sinh,
            nhan_vien.gioi_tinh,
            nhan_vien.sdt,
            nhan_vien_lam_viec_tai_cua_hang.vai_tro,
            nhan_vien_lam_viec_tai_cua_hang.ngay_vao_lam
        FROM 
            nhan_vien 
        JOIN 
            nhan_vien_lam_viec_tai_cua_hang 
        ON 
            nhan_vien.ma_nhan_vien = nhan_vien_lam_viec_tai_cua_hang.ma_nhan_vien
        JOIN 
            cua_hang 
        ON 
            nhan_vien_lam_viec_tai_cua_hang.ma_cua_hang = cua_hang.ma_cua_hang
        WHERE 
            nhan_vien_lam_viec_tai_cua_hang.vai_tro = ANY($1)
            AND nhan_vien.gioi_tinh = ANY($2)
            AND cua_hang.ma_cua_hang = $5
        ORDER BY '
|| array_to_string
(ARRAY
(SELECT unnest(order_attributes) || ' ' || unnest(order_directions))
, ', ')
    USING role_list, gender_list, ma_cua_hang;

END;
$$ LANGUAGE plpgsql;

--Tìm kiếm nhân viên dựa trên tên
CREATE OR REPLACE FUNCTION get_partial_name_data
(
    partial_name text
) RETURNS TABLE
(
    ma_nhan_vien UUID,
    ten_nhan_vien varchar
(255)
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        ma_nhan_vien,
        ten_nhan_vien
    FROM
        nhan_vien
    WHERE 
        ten_nhan_vien
    ILIKE '%' || partial_name || '%';

END;
$$ LANGUAGE plpgsql;
