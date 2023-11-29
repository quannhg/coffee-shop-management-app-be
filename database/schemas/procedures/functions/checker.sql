-- Hàm kiểm tra tuổi nhân viên
CREATE OR REPLACE FUNCTION kiem_tra_tuoi(_ngay_sinh DATE) RETURNS BOOLEAN AS $$
BEGIN
    IF _ngay_sinh > CURRENT_DATE - INTERVAL '18 years' THEN
        RAISE EXCEPTION 'Tuổi nhân viên phải lớn hơn 18 tuổi';
    END IF;
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

-- Hàm kiểm tra số điện thoại
CREATE OR REPLACE FUNCTION kiem_tra_sdt(_sdt VARCHAR(12)) RETURNS BOOLEAN AS $$
BEGIN
    IF _sdt !~ '^[0-9]{10,12}$' THEN
        RAISE EXCEPTION 'Số điện thoại không hợp lệ';
    END IF;
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

-- Hàm kiểm tra email
CREATE OR REPLACE FUNCTION kiem_tra_email(_email VARCHAR(30)) RETURNS BOOLEAN AS $$
BEGIN
    IF _email !~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' THEN
        RAISE EXCEPTION 'Email không hợp lệ';
    END IF;
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

-- Hàm kiểm tra mật khẩu băm mới khác mật khẩu băm cũ
CREATE OR REPLACE FUNCTION KiemTraMatKhauMoi(
    p_Mat_khau_hien_tai VARCHAR(60),
    p_Mat_khau_moi VARCHAR(60)
)
RETURNS BOOLEAN
AS $$
BEGIN
    -- Kiểm tra mật khẩu mới phải khác mật khẩu cũ
    RETURN p_Mat_khau_moi <> p_Mat_khau_hien_tai;
END;
$$ LANGUAGE plpgsql;
