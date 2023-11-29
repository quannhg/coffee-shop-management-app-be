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
    IF p_Ngay_sinh IS NOT NULL AND p_Ngay_sinh >= current_date THEN
        RAISE EXCEPTION 'Ngày sinh phải nhỏ hơn ngày hiện tại!';
    END IF;

    IF p_Sdt IS NOT NULL AND NOT KiemTraSoDienThoai(p_Sdt) THEN
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
        Ten_tai_khoan = COALESCE(p_Ten_tai_khoan_moi, Ten_tai_khoan),
        Mat_khau_bam = COALESCE(p_Mat_khau_bam_moi, Mat_khau_bam)
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
    IF p_Ngay_sinh IS NOT NULL AND p_Ngay_sinh >= current_date THEN
        RAISE EXCEPTION 'Ngày sinh phải nhỏ hơn ngày hiện tại!';
    END IF;

    IF p_Sdt IS NOT NULL AND NOT KiemTraSoDienThoai(p_Sdt) THEN
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
CREATE OR REPLACE PROCEDURE xoa_nhan_vien(_ma_nhan_vien UUID) RETURNS VOID AS $$
BEGIN
    DELETE FROM NHAN_VIEN WHERE Ma_nhan_vien = _ma_nhan_vien;
END;
$$ LANGUAGE plpgsql;
