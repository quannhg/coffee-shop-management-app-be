-- thủ tục trả về danh sách số lượng từng độ tuổi tại cửa hàng chỉ định sắp xếp theo độ tuổi tăng dần

CREATE OR REPLACE FUNCTION GetAgeGroupCountsByStore(
    maCuaHang UUID
)
RETURNS TABLE (
    so_luong_nhan_vien BIGINT,
	tuoi DOUBLE PRECISION
)
AS $$
BEGIN
RETURN QUERY
SELECT COUNT(*) AS so_luong_nhan_vien, FLOOR(DATE_PART('year', CURRENT_DATE) - DATE_PART('year', ngay_sinh)) AS tuoi
FROM nhan_vien
INNER JOIN nhan_vien_lam_viec_tai_cua_hang ON nhan_vien.ma_nhan_vien = nhan_vien_lam_viec_tai_cua_hang.ma_nhan_vien
WHERE ma_cua_hang = maCuaHang
GROUP BY tuoi
ORDER BY tuoi ASC;
END;
$$ LANGUAGE plpgsql;
