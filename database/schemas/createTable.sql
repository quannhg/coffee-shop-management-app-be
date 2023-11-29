-- run the following command when excute query failed, this will rollback transaction (excute only this command, not the whole file)
-- ROLLBACK; 

BEGIN;


	CREATE EXTENSION
	IF NOT EXISTS "uuid-ossp";

--create tables in here

CREATE TABLE KHACH_HANG
(
	Sdt VARCHAR(12) PRIMARY KEY,
	Ten_khach_hang VARCHAR(30) NOT NULL
);


CREATE TABLE CUA_HANG
(
	Ma_cua_hang UUID DEFAULT uuid_generate_v4 () NOT NULL,
	Ten_cua_hang VARCHAR(30) NOT NULL,
	Dia_chi VARCHAR(30) NOT NULL,
	Sdt VARCHAR(12) NOT NULL,
	Dia_chi_mail VARCHAR(30) NOT NULL,
	Gio_mo_cua TIME NOT NULL,
	Gio_dong_cua TIME NOT NULL,--
	PRIMARY KEY (Ma_cua_hang),
	CONSTRAINT unique_ma_cua_hang UNIQUE (Ma_cua_hang),
	CONSTRAINT unique_sdt UNIQUE (Sdt),
	CONSTRAINT unique_dia_chi_mail UNIQUE (Dia_chi_mail),
	CONSTRAINT unique_dia_chi UNIQUE (Dia_chi)
);


CREATE TYPE gioi_tinh AS ENUM ('Nam', 'Nữ', 'Khác');

CREATE TABLE NHAN_VIEN
(
    Ma_nhan_vien UUID DEFAULT uuid_generate_v4() NOT NULL,
    Ho_va_ten VARCHAR(30) NOT NULL,
    Ngay_sinh DATE NOT NULL,
    Gioi_tinh gioi_tinh NOT NULL,
    Dia_chi VARCHAR(30) NOT NULL,
    Sdt VARCHAR(12) UNIQUE NOT NULL,
    So_tk_ngan_hang VARCHAR(30) UNIQUE NOT NULL,
    Trinh_do_hoc_van VARCHAR(30) NOT NULL,
    Ten_tai_khoan VARCHAR(30) UNIQUE, 
    Mat_khau_bam VARCHAR(60), 
    PRIMARY KEY (Ma_nhan_vien)
);



CREATE TABLE DON_HANG
(
	Ma_don_hang VARCHAR(30) PRIMARY KEY,
	Thoi_gian_tao_don_hang DATE NOT NULL,
	Tinh_trang VARCHAR(30) NOT NULL,
	Dung_tai_quan_khong BOOLEAN NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	Sdt_khach_hang VARCHAR(12) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang),
	FOREIGN KEY(Sdt_khach_hang) REFERENCES KHACH_HANG(Sdt)
);


CREATE TABLE KHUYEN_MAI
(
	Ma_khuyen_mai VARCHAR(30) PRIMARY KEY,
	Ten_khuyen_mai VARCHAR(30) NOT NULL,
	Thoi_gian_bat_dau DATE,
	Thoi_gian_ket_thuc DATE,
	Gia_tri_cho_don_hang_toi_thieu INT,
	La_KM_cho_DH BOOLEAN NOT NULL,
	La_KM_cho_MON BOOLEAN NOT NULL,
	La_KM_cho_CH BOOLEAN NOT NULL
);


CREATE TABLE MON
(
	Ma_mon VARCHAR(30) PRIMARY KEY,
	Ten_mon VARCHAR(30) NOT NULL,
	Gia_tien INT NOT NULL
);


CREATE TABLE NGUYEN_LIEU
(
	Ma_nguyen_lieu VARCHAR(30) PRIMARY KEY,
	Ten_nguyen_lieu VARCHAR(30) UNIQUE NOT NULL,
	Don_vi VARCHAR(30) NOT NULL
);


CREATE TABLE HOA_DON_NHAP_KHO
(
	Ma_hoa_don VARCHAR(30) PRIMARY KEY,
	Thoi_gian_nhap_kho DATE NOT NULL,
	Nha_cung_cap VARCHAR(30) NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE CA_LAM_VIEC
(
	Ma_ca_lam_viec VARCHAR(30) PRIMARY KEY,
	He_so_luong_tang_them FLOAT ,
	Thoi_gian_bat_dau DATE NOT NULL,
	Thoi_gian_ket_thuc DATE NOT NULL,
	SL_NV_yeu_cau INT NOT NULL,
	Ma_cua_hang UUID,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE BAN
(
	Ma_ban VARCHAR(30) PRIMARY KEY,
	So_thu_tu INT UNIQUE NOT NULL,
	Trang_thai VARCHAR(30) NOT NULL,
	Thoi_gian_dat_truoc DATE,
	Sdt_nguoi_dat VARCHAR(12),
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE BAN_THOI_GIAN
(
	He_so_luong_theo_gio FLOAT NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE TOAN_THOI_GIAN
(
	Luong_thang INT NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE KHUYEN_MAI_TINH_THEO_SO
(
	Gia_giam INT NOT NULL,
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	FOREIGN KEY (Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai)
);


CREATE TABLE KHUYEN_MAI_TINH_THEO_PHAN_TRAM
(
	Phan_tram_giam INT NOT NULL,
	Muc_giam_toi_da INT,
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	FOREIGN KEY (Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai)
);


CREATE TABLE BANG_TINH_LUONG
(
	Ma_luong VARCHAR(30) PRIMARY KEY,
	Thoi_gian DATE,
	So_tien INT NOT NULL,
	Trang_thai VARCHAR(30),
	Hinh_thuc_thanh_toan BOOLEAN NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	Ma_nv_chiu_trach_nhiem UUID NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_nv_chiu_trach_nhiem) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG
(
	Ngay_vao_lam DATE NOT NULL,
	Ngay_nghi_viec DATE NOT NULL,
	Vai_tro VARCHAR(30) NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE NHAN_VIEN_QUAN_LY_CUA_HANG
(
	Ngay_bat_dau DATE NOT NULL,
	Ngay_ket_thuc DATE NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC
(
	Thoi_gian_den DATE NOT NULL,
	Thoi_gian_di DATE NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	Ma_ca_lam_viec VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_ca_lam_viec) REFERENCES CA_LAM_VIEC(Ma_ca_lam_viec)
);


CREATE TABLE CUA_HANG_CO_MON
(
	Ma_mon VARCHAR(30) NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE CUA_HANG_CHUA_NGUYEN_LIEU
(
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE DON_HANG_GOM_MON
(
	So_luong INT NOT NULL,
	Ma_don_hang VARCHAR(30) NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_don_hang) REFERENCES DON_HANG(Ma_don_hang),
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon)
);


CREATE TABLE DON_HANG_AP_DUNG_KHUYEN_MAI
(
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	Ma_don_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai),
	FOREIGN KEY(Ma_don_hang) REFERENCES DON_HANG(Ma_don_hang)
);


CREATE TABLE MON_AP_DUNG_KHUYEN_MAI
(
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai),
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon)
);


CREATE TABLE CUA_HANG_AP_DUNG_KHUYEN_MAI
(
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE MON_CAN_NGUYEN_LIEU
(
	So_luong INT NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu),
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon)
);


CREATE TABLE HOA_DON_NHAP_KHO_CO_NGUYEN_LIEU
(
	So_luong INT NOT NULL,
	Thanh_tien INT NOT NULL,
	Ma_hoa_don VARCHAR(30) NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_hoa_don) REFERENCES HOA_DON_NHAP_KHO(Ma_hoa_don),
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu)
);


CREATE TABLE PHAT
(
	Ma_nhan_vien UUID NOT NULL,
	Thoi_gian_phat VARCHAR(30),
	Tien_phat INT,
	Ly_do_phat VARCHAR(30),
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE THUONG
(
	Ma_nhan_vien UUID NOT NULL,
	Thoi_gian_thuong VARCHAR(30),
	Tien_thuong INT,
	Ly_do_thuong VARCHAR(30),
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE SO_LUONG_HAO_HUT
(
	So_luong_hao_hut INT,
	Ngay_hao_hut INT,
	Ma_cua_hang UUID NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang),
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu)
);

--Modify tables in here
ALTER TABLE DON_HANG_GOM_MON
ADD CHECK (So_luong > 0);

--cua hang can du so luong nguyen lieu de them mon vao don hang
CREATE OR REPLACE FUNCTION check_mon_can_nguyen_lieu()
RETURNS TRIGGER AS $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM v_SL_nguyen_lieu_cua_hang AS v
    WHERE NEW.Ma_nguyen_lieu = v.Ma_nguyen_lieu AND NEW.So_luong <= v.So_luong
  ) OR NEW.So_luong <= 0 THEN
    RAISE EXCEPTION 'Invalid So_luong for CUA_HANG';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_check_mon_can_nguyen_lieu
BEFORE INSERT OR UPDATE
ON MON_CAN_NGUYEN_LIEU
FOR EACH ROW
EXECUTE FUNCTION check_mon_can_nguyen_lieu();


--check khach hang co the dung tai quan khong
CREATE OR REPLACE FUNCTION check_dung_tai_quan()
RETURNS TRIGGER AS $$
DECLARE
  ban_count INT;
BEGIN
  -- Calculate the total number of occupied tables
  SELECT COUNT(*) INTO ban_count
  FROM v_So_ban_TRONG;

  -- Check the condition and raise an exception if not met
  IF NEW.Dung_tai_quan_khong = TRUE AND ban_count = 0 THEN
    RAISE EXCEPTION 'Invalid constraint: So ban trong = 0';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_check_dung_tai_quan
BEFORE INSERT OR UPDATE
ON DON_HANG
FOR EACH ROW
EXECUTE FUNCTION check_dung_tai_quan();

--check khuyen mai cho don hang	
CREATE OR REPLACE FUNCTION check_km_dh()
RETURNS TRIGGER AS $$
DECLARE
  total_tong_tien INT;
  gia_tri_toi_thieu INT;
BEGIN
  -- Calculate the total Tong_tien for the Ma_don_hang
  SELECT SUM(v.Tong_tien)
  INTO total_tong_tien
  FROM v_Tong_tien_MON AS v
  WHERE v.Ma_don_hang = NEW.Ma_don_hang;

  -- Get the Gia_tri_cho_don_hang_toi_thieu
  SELECT Gia_tri_cho_don_hang_toi_thieu
  INTO gia_tri_toi_thieu
  FROM KHUYEN_MAI
  JOIN DON_HANG_AP_DUNG_KHUYEN_MAI ON KHUYEN_MAI.Ma_khuyen_mai = DON_HANG_AP_DUNG_KHUYEN_MAI.Ma_khuyen_mai
  WHERE DON_HANG_AP_DUNG_KHUYEN_MAI.Ma_don_hang = NEW.Ma_don_hang;

  -- Check the conditions and raise an exception if not met
  IF total_tong_tien < gia_tri_toi_thieu OR total_tong_tien <= 0 THEN
    RAISE EXCEPTION 'Invalid total price';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_check_km_dh
BEFORE INSERT OR UPDATE
ON DON_HANG
FOR EACH ROW
EXECUTE FUNCTION check_km_dh();

ALTER TABLE MON
ADD CHECK (Gia_tien >= 0);

CREATE OR REPLACE FUNCTION check_nv_trong_ca()
RETURNS BOOLEAN AS $$
DECLARE
	sl_nv INT;
BEGIN
	SELECT COUNT(Ma_nhan_vien) INTO sl_nv
	FROM NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC
	
	RETURN sl_nv <= (SELECT SL_NV_yeu_cau FROM CA_LAM_VIEC LIMIT 1);
END;
$$ LANGUAGE plpgsql;

ALTER TABLE CA_LAM_VIEC
ADD CHECK (check_nv_trong_ca());

--end

COMMIT;