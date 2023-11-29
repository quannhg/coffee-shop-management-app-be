-- thủ tục select nhân viên của cửa hàng chỉ định sắp xếp theo tên

CREATE OR REPLACE FUNCTION GetEmployeesByStore(
    maCuaHang UUID
)
RETURNS TABLE (
    Ma_nhan_vien UUID,
    Ho_va_ten VARCHAR(30),
    Ngay_sinh DATE,
    Gioi_tinh VARCHAR(30),
    Dia_chi VARCHAR(30),
    Sdt VARCHAR(12),
    So_tk_ngan_hang VARCHAR(30),
    Trinh_do_hoc_van VARCHAR(30),
    Ten_tai_khoan VARCHAR(30),
    Mat_khau_bam VARCHAR(60)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        nv.Ma_nhan_vien,
        nv.Ho_va_ten,
        nv.Ngay_sinh,
        nv.Gioi_tinh,
        nv.Dia_chi,
        nv.Sdt,
        nv.So_tk_ngan_hang,
        nv.Trinh_do_hoc_van,
        nv.Ten_tai_khoan,
        nv.Mat_khau_bam FROM nhan_vien AS nv
    JOIN nhan_vien_lam_viec_tai_cua_hang AS nvlvtch ON nv.ma_nhan_vien = nvlvtch.ma_nhan_vien
    JOIN cua_hang AS ch ON nvlvtch.ma_cua_hang = ch.ma_cua_hang
    WHERE ch.ma_cua_hang = maCuaHang
    ORDER BY nv.ho_va_ten;
END;
$$ LANGUAGE plpgsql;