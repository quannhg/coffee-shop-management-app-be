-- Thủ tục thêm dữ liệu
CREATE OR REPLACE FUNCTION them_nhan_vien(
    _ho_va_ten VARCHAR(30),
    _ngay_sinh DATE,
    _gioi_tinh VARCHAR(30),
    _dia_chi VARCHAR(30),
    _sdt VARCHAR(12),
    _so_tk_ngan_hang VARCHAR(30),
    _trinh_do_hoc_van VARCHAR(30),
    _ten_tai_khoan VARCHAR(30),
    _mat_khau_bam VARCHAR(60)
) RETURNS VOID AS $$
BEGIN
    -- Kiểm tra dữ liệu hợp lệ
    IF _ngay_sinh > CURRENT_DATE - INTERVAL '16 years' THEN
        RAISE EXCEPTION 'Tuổi nhân viên phải lớn hơn 16 tuổi';
    END IF;
    IF _sdt !~ '^[0-9]{10}$' THEN
        RAISE EXCEPTION 'Số điện thoại không hợp lệ';
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
CREATE OR REPLACE FUNCTION sua_nhan_vien(
    _ma_nhan_vien UUID,
    _ho_va_ten VARCHAR(30),
    _ngay_sinh DATE,
    _gioi_tinh VARCHAR(30),
    _dia_chi VARCHAR(30),
    _sdt VARCHAR(12),
    _so_tk_ngan_hang VARCHAR(30),
    _trinh_do_hoc_van VARCHAR(30),
    _ten_tai_khoan VARCHAR(30),
    _mat_khau_bam VARCHAR(60)
) RETURNS VOID AS $$
BEGIN
    -- Kiểm tra dữ liệu hợp lệ
    IF _ngay_sinh > CURRENT_DATE - INTERVAL '18 years' THEN
        RAISE EXCEPTION 'Tuổi nhân viên phải lớn hơn 18 tuổi';
    END IF;
    IF _sdt !~ '^[0-9]{10,12}$' THEN
        RAISE EXCEPTION 'Số điện thoại không hợp lệ';
    END IF;
    -- Sửa dữ liệu
    UPDATE NHAN_VIEN SET
        Ho_va_ten = _ho_va_ten,
        Ngay_sinh = _ngay_sinh,
        Gioi_tinh = _gioi_tinh,
        Dia_chi = _dia_chi,
        Sdt = _sdt,
        So_tk_ngan_hang = _so_tk_ngan_hang,
        Trinh_do_hoc_van = _trinh_do_hoc_van,
        Ten_tai_khoan = _ten_tai_khoan,
        Mat_khau_bam = _mat_khau_bam
    WHERE Ma_nhan_vien = _ma_nhan_vien;
END;
$$ LANGUAGE plpgsql;

-- Thủ tục xóa dữ liệu
CREATE OR REPLACE FUNCTION xoa_nhan_vien(_ma_nhan_vien UUID) RETURNS VOID AS $$
BEGIN
    DELETE FROM NHAN_VIEN WHERE Ma_nhan_vien = _ma_nhan_vien;
END;
$$ LANGUAGE plpgsql;
