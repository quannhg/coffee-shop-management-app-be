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
	Gio_dong_cua TIME NOT NULL,
	Luong_thang_toi_thieu INT NOT NULL,
	Luong_gio_toi_thieu INT NOT NULL,
	PRIMARY KEY (Ma_cua_hang),
	CONSTRAINT unique_ma_cua_hang UNIQUE (Ma_cua_hang),
	CONSTRAINT unique_sdt UNIQUE (Sdt),
	CONSTRAINT unique_dia_chi_mail UNIQUE (Dia_chi_mail),
	CONSTRAINT unique_dia_chi UNIQUE (Dia_chi)
);


CREATE TYPE gioi_tinh AS ENUM ('Nam', 'Nu');

CREATE TABLE NHAN_VIEN
(
    Ma_nhan_vien UUID DEFAULT uuid_generate_v4() NOT NULL,
	avatarUrl VARCHAR(400),
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
	avatarUrl VARCHAR(400),
	Ten_mon VARCHAR(30) UNIQUE NOT NULL ,
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
	Thoi_gian_bat_dau TIMESTAMP NOT NULL,
	Thoi_gian_ket_thuc TIMESTAMP NOT NULL,
	SL_NV_yeu_cau INT NOT NULL,
	Ma_cua_hang UUID,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);

CREATE TYPE trang_thai AS ENUM ('Trong', 'Dat Truoc', 'Dang Ngoi');
CREATE TABLE BAN
(
	Ma_ban VARCHAR(30) PRIMARY KEY,
	So_thu_tu INT NOT NULL,
	Trang_thai trang_thai NOT NULL,
	Thoi_gian_dat_truoc DATE,
	Sdt_nguoi_dat VARCHAR(12),
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang),
	CONSTRAINT unique_ma_cua_hang_stt UNIQUE (Ma_cua_hang, So_thu_tu)
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
	Thoi_gian_den TIMESTAMP NOT NULL,
	Thoi_gian_di TIMESTAMP NOT NULL,
	Ma_nhan_vien UUID NOT NULL,
	Ma_ca_lam_viec VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_ca_lam_viec) REFERENCES CA_LAM_VIEC(Ma_ca_lam_viec)
);


CREATE TABLE CUA_HANG_CO_MON
(
	Ma_mon  VARCHAR(30) NOT NULL,
	Ma_cua_hang UUID NOT NULL,
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);


CREATE TABLE CUA_HANG_CHUA_NGUYEN_LIEU
(
	So_luong INT NOT NULL,
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
	Thoi_gian_phat DATE,
	Tien_phat INT,
	Ly_do_phat VARCHAR(30),
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE THUONG
(
	Ma_nhan_vien UUID NOT NULL,
	Thoi_gian_thuong DATE,
	Tien_thuong INT,
	Ly_do_thuong VARCHAR(30),
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);


CREATE TABLE SO_LUONG_HAO_HUT
(
	So_luong_hao_hut INT,
	Ngay_hao_hut DATE,
	Ma_cua_hang UUID NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang),
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu)
);

--Modify tables in here
ALTER TABLE DON_HANG_GOM_MON
ADD CHECK (So_luong > 0);

--cua hang can du so luong nguyen lieu de them mon vao don hang
CREATE OR REPLACE FUNCTION check_mon_can_nguyen_lieu() RETURNS TRIGGER AS $$
DECLARE
    nguyen_lieu mon_can_nguyen_lieu%ROWTYPE;
    so_luong_cua_hang INT;
	cua_hang UUID;
BEGIN
    SELECT ma_cua_hang INTO cua_hang FROM don_hang WHERE ma_don_hang = NEW.ma_don_hang;
    FOR nguyen_lieu IN SELECT * FROM mon_can_nguyen_lieu WHERE ma_mon = NEW.ma_mon LOOP
        so_luong_cua_hang := 0;
        SELECT so_luong INTO so_luong_cua_hang FROM cua_hang_chua_nguyen_lieu ch_nl WHERE ch_nl.ma_nguyen_lieu = nguyen_lieu.ma_nguyen_lieu AND ch_nl.ma_cua_hang = cua_hang;
        IF so_luong_cua_hang IS NULL THEN
            RAISE EXCEPTION 'Nguyen lieu % not found in cua hang', nguyen_lieu.ma_nguyen_lieu;
        ELSIF nguyen_lieu.so_luong * NEW.so_luong > so_luong_cua_hang THEN
            RAISE EXCEPTION 'Not enough % in cua hang', nguyen_lieu.ma_nguyen_lieu;
        END IF;
        RAISE NOTICE 'Nguyen lieu: %, So luong cua hang: %', nguyen_lieu.ma_nguyen_lieu, so_luong_cua_hang;
    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

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




ALTER TABLE MON
ADD CHECK (Gia_tien >= 0);

--check so luong nhan vien trong ca lam viec
CREATE OR REPLACE FUNCTION check_nv_trong_ca()
RETURNS BOOLEAN AS $$
DECLARE
  ca_lam_viec RECORD;
  sl_nv INTEGER;
  sl_nv_yeu_cau INTEGER;
BEGIN
  FOR ca_lam_viec IN SELECT * FROM CA_LAM_VIEC LOOP
	SELECT COUNT(*) INTO sl_nv
	FROM NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC
	WHERE Ma_ca_lam_viec = ca_lam_viec.Ma_ca_lam_viec;

	sl_nv_yeu_cau := ca_lam_viec.SL_NV_yeu_cau;

	IF sl_nv > sl_nv_yeu_cau THEN 
		RETURN FALSE;
	END IF;
  END LOOP;
  RETURN TRUE; 
END;
$$ LANGUAGE plpgsql;

ALTER TABLE  NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC
ADD CONSTRAINT check_nv_trong_ca_constraint CHECK (check_nv_trong_ca());


--check khoang thoi gian lam viec cua nhan vien, ca lam viec, cua hang
CREATE OR REPLACE FUNCTION check_tg_CLV_NVLV()
RETURNS TRIGGER AS $$
DECLARE
	diff_time_lvt INTERVAL; --thoi gian nhan vien lam viec trong ca
	diff_time_clv INTERVAL; --thoi gian ca lam viec
BEGIN
	SELECT (Thoi_gian_di - Thoi_gian_den)::INTERVAL INTO diff_time_lvt
	FROM NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC;

	SELECT (Thoi_gian_ket_thuc - Thoi_gian_bat_dau)::INTERVAL INTO diff_time_clv
	FROM CA_LAM_VIEC;

	IF diff_time_lvt > diff_time_clv THEN
	    RAISE EXCEPTION 'Invalid Nhan vien lam viec nhieu gio hon ca lam viec';
	END IF;

	IF diff_time_lvt < '00:00:00' THEN
	    RAISE EXCEPTION 'Invalid Thoi gian di nho hon thoi gian den';
	END IF; 
	
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION check_tg_CLV_CH()
RETURNS TRIGGER AS $$
DECLARE 
	diff_time_ch INTERVAL; --thoi gian cua hang hoat dong
	diff_time_clv INTERVAL; --thoi gian ca lam viec
BEGIN
    SELECT (Thoi_gian_ket_thuc - Thoi_gian_bat_dau)::INTERVAL INTO diff_time_clv
	FROM CA_LAM_VIEC;

	SELECT (Gio_dong_cua - Gio_mo_cua)::INTERVAL INTO diff_time_ch
	FROM CUA_HANG;

	IF diff_time_clv > diff_time_ch THEN
		RAISE EXCEPTION 'Invalid Ca lam viec nhieu gio hon cua hang hoat dong';
	END IF;

	IF diff_time_clv < '00:00:00' THEN
		RAISE EXCEPTION 'Invalid Thoi gian ket thuc nho hon thoi gian bat dau';
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

ALTER TABLE CUA_HANG
ADD CONSTRAINT check_tg CHECK (Gio_mo_cua < Gio_dong_cua);

-- check validation thoi gian cua nhan vien
CREATE OR REPLACE FUNCTION check_tg_nv()
RETURNS TRIGGER AS $$
DECLARE
	Ngay_BD_QL DATE;
	Ngay_KT_QL DATE;
	TG_Thuong DATE;
	TG_Phat DATE;
	TG_BANG_TINH_LUONG DATE;
	Ngay_VL DATE; --ngay vao lam
	Ngay_NV DATE; --ngay nghi viec
BEGIN
	SELECT Ngay_bat_dau INTO Ngay_BD_QL
	FROM NHAN_VIEN_QUAN_LY_CUA_HANG;

	SELECT Ngay_ket_thuc INTO Ngay_KT_QL
	FROM NHAN_VIEN_QUAN_LY_CUA_HANG;

	SELECT Thoi_gian_thuong INTO TG_Thuong
	FROM THUONG;

	SELECT Thoi_gian_phat INTO TG_Phat
	FROM PHAT;

	SELECT Thoi_gian INTO TG_BANG_TINH_LUONG
	FROM BANG_TINH_LUONG;

	SELECT Ngay_vao_lam INTO Ngay_VL
	FROM NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG;

	SELECT Ngay_nghi_viec INTO Ngay_NV
	FROM NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG;

	IF Ngay_BD_QL NOT BETWEEN Ngay_VL AND Ngay_NV THEN
		RAISE EXCEPTION 'Invalid Ngay bat dau quan ly';
	END IF;

	IF Ngay_KT_QL NOT BETWEEN Ngay_VL AND Ngay_NV THEN
		RAISE EXCEPTION 'Invalid Ngay ket thuc quan ly';
	END IF;

	IF TG_Thuong NOT BETWEEN Ngay_VL AND Ngay_NV THEN
		RAISE EXCEPTION 'Invalid Thoi gian thuong';
	END IF;

	IF TG_Phat NOT BETWEEN Ngay_VL AND Ngay_NV THEN
		RAISE EXCEPTION 'Invalid Thoi gian phat';
	END IF;

	IF TG_BANG_TINH_LUONG NOT BETWEEN Ngay_VL AND Ngay_NV THEN
		RAISE EXCEPTION 'Invalid Thoi gian bang tinh luong';
	END IF;

	RETURN NEW; 
END;
$$ LANGUAGE plpgsql;

ALTER TABLE NHAN_VIEN_QUAN_LY_CUA_HANG
ADD CONSTRAINT check_tg_nv_constraint CHECK (Ngay_bat_dau < Ngay_ket_thuc);

--check validation luong nhan vien theo cua hang
CREATE OR REPLACE FUNCTION decrease_ingredient_quantity() RETURNS TRIGGER AS $$
DECLARE
    r mon_can_nguyen_lieu%ROWTYPE;
BEGIN
    FOR r IN SELECT * FROM mon_can_nguyen_lieu WHERE ma_mon = NEW.ma_mon
    LOOP
        UPDATE cua_hang_chua_nguyen_lieu
        SET so_luong = so_luong - r.so_luong
        WHERE ma_cua_hang = 
            (SELECT ma_cua_hang 
             FROM don_hang 
             WHERE don_hang.ma_don_hang = NEW.ma_don_hang)
        AND ma_nguyen_lieu = r.ma_nguyen_lieu;
    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION increase_ingredient_quantity() RETURNS TRIGGER AS $$
DECLARE
    existing_record INT;
BEGIN
    SELECT COUNT(*) INTO existing_record FROM cua_hang_chua_nguyen_lieu WHERE ma_nguyen_lieu = NEW.ma_nguyen_lieu AND ma_cua_hang = (SELECT ma_cua_hang FROM hoa_don_nhap_kho WHERE ma_hoa_don = NEW.ma_hoa_don);
    IF existing_record = 0 THEN
        INSERT INTO cua_hang_chua_nguyen_lieu (so_luong, ma_nguyen_lieu, ma_cua_hang) VALUES (NEW.so_luong, NEW.ma_nguyen_lieu, (SELECT ma_cua_hang FROM hoa_don_nhap_kho WHERE ma_hoa_don = NEW.ma_hoa_don));
    ELSE
        UPDATE cua_hang_chua_nguyen_lieu
        SET so_luong = so_luong + NEW.so_luong
        WHERE ma_cua_hang = 
            (SELECT ma_cua_hang 
             FROM hoa_don_nhap_kho 
             WHERE hoa_don_nhap_kho.ma_hoa_don = NEW.ma_hoa_don)
        AND ma_nguyen_lieu = NEW.ma_nguyen_lieu;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_ingredient_quantity() RETURNS TRIGGER AS $$
BEGIN
    UPDATE cua_hang_chua_nguyen_lieu
    SET so_luong = so_luong + NEW.so_luong - OLD.so_luong
    WHERE ma_cua_hang = 
        (SELECT ma_cua_hang 
         FROM hoa_don_nhap_kho 
         WHERE hoa_don_nhap_kho.ma_hoa_don = NEW.ma_hoa_don)
    AND ma_nguyen_lieu = NEW.ma_nguyen_lieu;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION check_luong_gio_toi_thieu()
RETURNS TRIGGER AS $$
DECLARE
    luong_gio_toi_thieu_vung INT;
	
BEGIN
    
    SELECT Luong_gio_toi_thieu INTO luong_gio_toi_thieu_vung
    FROM CUA_HANG ch
    JOIN NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG nvch ON ch.Ma_cua_hang = nvch.Ma_cua_hang
	WHERE NEW.Ma_nhan_vien = Ma_nhan_vien; 

    
    IF NEW.He_so_luong_theo_gio < luong_gio_toi_thieu_vung THEN
        NEW.He_so_luong_theo_gio := luong_gio_toi_thieu_vung;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION check_luong_thang_toi_thieu()
RETURNS TRIGGER AS $$
DECLARE
    
	luong_thang_toi_thieu_vung INT;
BEGIN
    
	SELECT Luong_thang_toi_thieu INTO luong_thang_toi_thieu_vung
	FROM CUA_HANG ch
	JOIN NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG nvch ON ch.Ma_cua_hang = nvch.Ma_cua_hang
	WHERE NEW.Ma_nhan_vien = Ma_nhan_vien;

    
    IF NEW.Luong_thang < luong_thang_toi_thieu_vung THEN
        NEW.Luong_thang := luong_thang_toi_thieu_vung;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

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
-- ultility:  SELECT * FROM calculate_table_status('id CUA_HANG');

-- func check CUA_HANG have enough Nguyen_lieu to cook
-- CREATE OR REPLACE FUNCTION check_du_nguyen_lieu(mon_id VARCHAR(30), cua_hang_id UUID)
-- RETURNS BOOLEAN AS $$
-- DECLARE
--     mon_nguyen_lieu_count INT;
--     cua_hang_nguyen_lieu_count INT;
-- BEGIN
--     -- Đếm số lượng nguyên liệu cần cho món ăn
--     SELECT COUNT(*) INTO mon_nguyen_lieu_count
--     FROM MON_CAN_NGUYEN_LIEU
--     WHERE Ma_mon = mon_id;

--     -- Đếm số lượng nguyên liệu có sẵn trong cửa hàng
--     SELECT COUNT(*) INTO cua_hang_nguyen_lieu_count
--     FROM CUA_HANG_CHUA_NGUYEN_LIEU chnl
--     WHERE chnl.Ma_cua_hang = cua_hang_id
--         AND chnl.Ma_nguyen_lieu IN (
--             SELECT Ma_nguyen_lieu
--             FROM MON_CAN_NGUYEN_LIEU
--             WHERE Ma_mon = mon_id
--         );

--     -- Kiểm tra xem có đủ nguyên liệu không
--     RETURN cua_hang_nguyen_lieu_count >= mon_nguyen_lieu_count;
-- END;
-- $$ LANGUAGE plpgsql;

--ultility: SELECT check_du_nguyen_lieu('id mon','id cua hang') AS result;
--end
COMMIT;