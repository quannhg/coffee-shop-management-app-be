--create tables in here
CREATE TABLE KHACH_HANG(
    Sdt VARCHAR(30) PRIMARY KEY,
    Ten_khach_hang VARCHAR(30) NOT NULL,
);
CREATE TABLE CUA_HANG (
    Ma_cua_hang VARCHAR(30) NOT NULL,
    Ten_cua_hang VARCHAR(30) NOT NULL,
    Dia_chi VARCHAR(30) NOT NULL,
    Sdt VARCHAR(10) NOT NULL,
    Dia_chi_mail VARCHAR(30) NOT NULL,
    Gio_mo_cua TIME NOT NULL,
    Gio_dong_cua TIME NOT NULL,
    So_ban INT,
    So_ban_trong INT,
    PRIMARY KEY (Ma_cua_hang),
    CONSTRAINT unique_ma_cua_hang UNIQUE (Ma_cua_hang),
    CONSTRAINT unique_sdt UNIQUE (Sdt),
    CONSTRAINT unique_dia_chi_mail UNIQUE (Dia_chi_mail),
    CONSTRAINT unique_dia_chi UNIQUE (Dia_chi)
);
CREATE TABLE NHAN_VIEN (
    Ma_nhan_vien VARCHAR(30) PRIMARY KEY,
    Ho_va_ten VARCHAR(30) NOT NULL,
    Ngay_sinh DATE NOT NULL,
    Gioi_tinh VARCHAR(30) NOT NULL,
    Dia_chi VARCHAR(30) NOT NULL,
    Sdt VARCHAR(10) UNIQUE NOT NULL,
    So_tk_ngan_hang VARCHAR(30) UNIQUE NOT NULL,
    Trinh_do_hoc_van VARCHAR(30) NOT NULL
);

CREATE TABLE DON_HANG (
    Ma_don_hang VARCHAR(30) PRIMARY KEY,
    Thoi_gian_tao_don_hang DATE NOT NULL,
    Tinh_trang VARCHAR(30) NOT NULL,
    Tong_tien INT NOT NULL,
    Dung_tai_quan_khong BOOLEAN NOT NULL,
    Ma_nhan_vien VARCHAR(30) NOT NULL,
    Ma_cua_hang VARCHAR(30) NOT NULL,
    Sdt_khach_hang VARCHAR(30) NOT NULL,
    FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
    FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang),
    FOREIGN KEY(Sdt_khach_hang) REFERENCES KHACH_HANG(Sdt)
);
CREATE TABLE KHUYEN_MAI (
    Ma_khuyen_mai VARCHAR(30) PRIMARY KEY,
    Ten_khuyen_mai VARCHAR(30) NOT NULL,
    Thoi_gian_bat_dau DATE,
    Thoi_gian_ket_thuc DATE,
    Muc_giam_toi_da INT,
    Gia_tri_cho_don_hang_toi_thieu INT,
    La_KM_cho_DH BOOLEAN NOT NULL,
    La_KM_cho_MON BOOLEAN NOT NULL,
    La_KM_cho_CH BOOLEAN NOT NULL
);
CREATE TABLE MON(
    Ma_mon VARCHAR(30) PRIMARY KEY,
    Ten_mon VARCHAR(30) NOT NULL,
    Gia_tien INT NOT NULL
);

CREATE TABLE NGUYEN_LIEU(
    Ma_nguyen_lieu VARCHAR(30) PRIMARY KEY,
    Ten_nguyen_lieu VARCHAR(30) UNIQUE NOT NULL,
    Don_vi VARCHAR(30) NOT NULL
);
CREATE TABLE HOA_DON_NHAP_KHO(
    Ma_hoa_don VARCHAR(30) PRIMARY KEY,
    Thoi_gian_nhap_kho DATE NOT NULL,
    Nha_cung_cap VARCHAR(30) NOT NULL,
    Tong_tien INT NOT NULL,
    Ma_cua_hang VARCHAR(30) NOT NULL,
    FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);
CREATE TABLE CA_LAM_VIEC(
    Ma_ca_lam_viec VARCHAR(30) PRIMARY KEY,
    He_so_luong_tang_them FLOAT ,
    Thoi_gian_bat_dau DATE NOT NULL,
    Thoi_gian_ket_thuc DATE NOT NULL,
    SL_NV_yeu_cau INT NOT NULL,
    SL_NV_con_can INT NOT NULL,
    Ma_cua_hang VARCHAR(30),
    FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang) 
);
CREATE TABLE BAN(
	Ma_ban VARCHAR(30) PRIMARY KEY,
	So_thu_tu INT UNIQUE NOT NULL,
	Trang_thai VARCHAR(30) NOT NULL,
	Thoi_gian_dat_truoc DATE,
	Sdt_nguoi_dat VARCHAR(10) UNIQUE,
	Ma_cua_hang VARCHAR(30) NOT NULL,
    FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang) 
);
CREATE TABLE BAN_THOI_GIAN(
	He_so_luong_theo_gio FLOAT NOT NULL,
	So_gio INT NOT NULL,
	Thang INT NOT NULL,
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);
CREATE TABLE TOAN_THOI_GIAN(
	Luong_thang INT NOT NULL,
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);

CREATE TABLE KHUYEN_MAI_TINH_THEO_SO(
	Gia_giam INT NOT NULL,
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	FOREIGN KEY (Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai)
);
CREATE TABLE KHUYEN_MAI_TINH_THEO_PHAN_TRAM(
	Phan_tram_giam INT NOT NULL,
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	FOREIGN KEY (Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai)
);

CREATE TABLE BANG_TINH_LUONG(
	Ma_luong VARCHAR(30) PRIMARY KEY,
	Thoi_gian DATE,
	So_tien INT NOT NULL,
	Trang_thai VARCHAR(30),
	Hinh_thuc_thanh_toan BOOLEAN NOT NULL,
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	Ma_nv_chiu_trach_nhiem VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_nv_chiu_trach_nhiem) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);

CREATE TABLE NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG(
	Ngay_vao_lam DATE NOT NULL,
	Ngay_nghi_viec DATE NOT NULL,
	Vai_tro VARCHAR(30) NOT NULL,
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	Ma_cua_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);
CREATE TABLE NHAN_VIEN_QUAN_LY_CUA_HANG(
	Ngay_bat_dau DATE NOT NULL,
	Ngay_ket_thuc DATE NOT NULL,
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	Ma_cua_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);
CREATE TABLE NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC(
	Thoi_gian_den DATE NOT NULL,
	Thoi_gian_di DATE NOT NULL,
	Co_mat BOOLEAN NOT NULL,
	Tre BOOLEAN NOT NULL,
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	Ma_ca_lam_viec VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien),
	FOREIGN KEY(Ma_ca_lam_viec) REFERENCES CA_LAM_VIEC(Ma_ca_lam_viec)
);
CREATE TABLE CUA_HANG_CO_MON(
	Dang_san_sang_phuc_vu BOOLEAN NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	Ma_cua_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);
CREATE TABLE CUA_HANG_CHUA_NGUYEN_LIEU(
	So_luong INT NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	Ma_cua_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);
CREATE TABLE DON_HANG_GOM_MON(
	So_luong INT NOT NULL,
	Ma_don_hang VARCHAR(30) NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_don_hang) REFERENCES DON_HANG(Ma_don_hang),
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon)
);
CREATE TABLE DON_HANG_AP_DUNG_KHUYEN_MAI(
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	Ma_don_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai),
	FOREIGN KEY(Ma_don_hang) REFERENCES DON_HANG(Ma_don_hang)
);
CREATE TABLE MON_AP_DUNG_KHUYEN_MAI(
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai),
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon)
);
CREATE TABLE CUA_HANG_AP_DUNG_KHUYEN_MAI(
	Ma_khuyen_mai VARCHAR(30) NOT NULL,
	Ma_cua_hang VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_khuyen_mai) REFERENCES KHUYEN_MAI(Ma_khuyen_mai),
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang)
);
CREATE TABLE MON_CAN_NGUYEN_LIEU(
	So_luong INT NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	Ma_mon VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu),
	FOREIGN KEY(Ma_mon) REFERENCES MON(Ma_mon)
);
CREATE TABLE HOA_DON_NHAP_KHO_CO_NGUYEN_LIEU(
	So_luong INT NOT NULL,
	Thanh_tien INT NOT NULL,
	Ma_hoa_don VARCHAR(30) NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_hoa_don) REFERENCES HOA_DON_NHAP_KHO(Ma_hoa_don),
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu)
);
CREATE TABLE PHAT (
    Ma_nhan_vien VARCHAR(30) NOT NULL,
    Thoi_gian_phat VARCHAR(30),
    Tien_phat INT,
    Ly_do_phat VARCHAR(30),
    FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);
CREATE TABLE THUONG(
	Ma_nhan_vien VARCHAR(30) NOT NULL,
	Thoi_gian_thuong VARCHAR(30),
    Tien_thuong INT,
    Ly_do_thuong VARCHAR(30),
	FOREIGN KEY(Ma_nhan_vien) REFERENCES NHAN_VIEN(Ma_nhan_vien)
);
CREATE TABLE SO_LUONG_HAO_HUT(
	So_luong_hao_hut INT,
	Ngay_hao_hut INT,
	Ma_cua_hang VARCHAR(30) NOT NULL,
	Ma_nguyen_lieu VARCHAR(30) NOT NULL,
	FOREIGN KEY(Ma_cua_hang) REFERENCES CUA_HANG(Ma_cua_hang),
	FOREIGN KEY(Ma_nguyen_lieu) REFERENCES NGUYEN_LIEU(Ma_nguyen_lieu)
);