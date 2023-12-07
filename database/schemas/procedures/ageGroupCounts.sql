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


--ultility: SELECT * FROM danh_sach_so_luong_theo_tuoi('Mã_cửa_hàng_cần_kiểm_tra');
