-- run the following command when excute query failed, this will rollback transaction (excute only this command, not the whole file)
-- ROLLBACK;

BEGIN;

    -- initial data in here

    -- insert cua_hang
insert into CUA_HANG (Ma_cua_hang,Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua, Luong_thang_toi_thieu, Luong_gio_toi_thieu) values ('79f44967-7044-48f1-8b24-69386cc1b50a','Stokes-Fahey', '1 Vera Street', '732-675-2337', 'nbennell0@economist.com', '6:00', '19:00', 3000000, 40000);
insert into CUA_HANG (Ma_cua_hang,Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua, Luong_thang_toi_thieu, Luong_gio_toi_thieu) values ('307ac585-7af5-4642-80b2-99726495a060','Roberts-MacGyver', '14 Burning Wood Drive', '537-129-1740', 'bcheng1@berkeley.edu', '6:00', '19:00', 3000000, 40000);
insert into CUA_HANG (Ma_cua_hang,Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua, Luong_thang_toi_thieu, Luong_gio_toi_thieu) values ('d40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7','Gleichner, Rolfson and Rohan', '94772 Grover Park', '787-905-9252', 'mlhomme2@usa.gov', '6:00', '19:00', 3000000, 40000);

    -- insert khach_hang
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('781-249-2525', 'Cassey Brion');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('948-879-8012', 'Ginelle Prozillo');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('673-912-3161', 'Dalston Atwill');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('265-423-2506', 'Bartolemo Skudder');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('285-124-0684', 'Derwin Markushkin');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('473-412-2309', 'Shaina Tunuy');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('674-930-1287', 'Carlie Ovid');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('409-243-7316', 'Borden Knighton');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('522-231-0059', 'Freida Clyma');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('767-761-2781', 'Daisi Enoksson');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('569-286-0047', 'Waverly Dobbins');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('336-127-3032', 'Leela Cancutt');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('298-238-6838', 'Rochell Ellin');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('424-873-7098', 'Tessy Sends');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('200-671-6154', 'Olvan Workman');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('174-870-1215', 'Florrie Ruttgers');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('448-689-6286', 'Rica Oldis');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('181-133-2899', 'Wilow Lynnett');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('595-439-7011', 'Dulci Rookeby');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('676-532-0672', 'Rhetta Gager');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('821-341-9982', 'Brooks Dablin');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('429-740-1485', 'Kathye Maskelyne');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('358-157-1079', 'Hobey Maurice');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('888-864-2094', 'Alfie Vannar');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('789-462-8304', 'Tarrah Bourgourd');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('848-563-6903', 'Elna Ernke');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('897-155-1889', 'Olympe Jobke');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('631-827-0689', 'Krisha Yeoland');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('323-144-9568', 'Angelica Beeswing');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('470-727-2049', 'Stern Coil');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('252-780-4243', 'Estella Odgaard');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('219-576-9202', 'Jone Fones');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('911-690-2201', 'Tiff Merritt');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('486-505-6011', 'Patton Metzig');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('380-923-0513', 'Ralina Scampion');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('162-125-9389', 'Kirby Clelle');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('858-738-5951', 'Alick Frondt');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('782-709-7246', 'Virginia Dunbleton');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('422-683-7782', 'Ilene Gebb');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('213-241-6472', 'Padraig Brent');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('312-522-0234', 'Huntley Simukov');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('754-381-0549', 'Hartley Gladebeck');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('942-875-1552', 'Sibley Haggerstone');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('303-767-5897', 'Dorene Vallack');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('667-389-0158', 'Devonne Beare');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('231-222-5189', 'Freddie Durak');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('982-393-4446', 'Erna Chieze');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('776-204-1912', 'Hali De Malchar');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('835-939-6938', 'Tabatha Embery');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('105-166-9916', 'Bradly Kaser');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('172-417-6186', 'Gabe Ventom');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('892-910-0208', 'Jakie Vasilchenko');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('803-190-0466', 'Cathleen Scoines');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('455-130-7796', 'Del McGoon');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('755-211-5184', 'Douglas Thieme');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('753-659-5299', 'Reid Beazley');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('985-432-0146', 'Olivero Shepperd');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('511-499-0821', 'Baxter Gawen');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('407-126-0375', 'Delmore Ubanks');
insert into KHACH_HANG (Sdt, Ten_khach_hang) values ('514-828-5169', 'Gilli Mc Ilory');
    
    -- insert khuyen_mai
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('68786-220', 'Twinkling Tinsel Twilight', '2023-11-03', '2023-11-26', 43196, true, true, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('37808-552', 'Merry Mitten Mingle', '2023-11-02', '2023-11-29', 86784, true, true, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('49288-0004', 'Winter Wonderland Day', '2023-11-01', '2023-11-27', 62179, false, true, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('63629-3760', 'Joyful Jingle Jam', '2023-11-03', '2023-11-26', 61916, false, true, true);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('42507-692', 'Cocoa and Carols Carnival', '2023-11-02', '2023-11-28', 45444, false, true, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('41163-742', 'Sparkling Snowflake Spectacle', '2023-11-01', '2023-11-28', 44494, true, false, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('64117-178', 'Sparkling Snowflake Spectacle', '2023-11-02', '2023-11-26', 92996, true, true, true);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('68084-523', 'Festive Feathers Festival', '2023-11-03', '2023-11-29', 51690, true, true, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('68382-228', 'Enchanted Evergreen', '2023-11-03', '2023-11-29', 75582, false, false, false);
insert into khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) values ('42388-012', 'Cocoa and Carols Carnival', '2023-11-02', '2023-11-28', 88646, true, false, true);
    
    -- insert mon
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('63691-010', 'http://dummyimage.com/109x100.png/cc0000/ffffff', 'Irish Coffee', 56000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('52125-049', 'http://dummyimage.com/114x100.png/ff4444/ffffff', 'Macchiato', 34000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('51991-747', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', 'Iced Coffee', 51000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('17478-327', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 'Flat White', 45000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('41163-413', 'http://dummyimage.com/102x100.png/cc0000/ffffff', 'Fruit Juices', 33000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('0781-4004', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'Iced Tea', 60000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('42507-328', 'http://dummyimage.com/246x100.png/ff4444/ffffff', 'Irish Coffee', 58000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('54569-2376', 'http://dummyimage.com/141x100.png/dddddd/000000', 'Macchiato', 30304);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('55315-250', 'http://dummyimage.com/109x100.png/cc0000/ffffff', 'Iced Coffee', 29036);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('49349-034', 'http://dummyimage.com/114x100.png/ff4444/ffffff', 'Flat White', 30619);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('24385-550', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', 'Fruit Juices', 55000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('50458-346', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 'Iced Tea', 28000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('21695-068', 'http://dummyimage.com/102x100.png/cc0000/ffffff', 'Irish Coffee', 32000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('41163-664', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'Macchiato', 57000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('55154-1057', 'http://dummyimage.com/246x100.png/ff4444/ffffff', 'Iced Coffee', 50000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('52125-781', 'http://dummyimage.com/141x100.png/dddddd/000000', 'Flat White', 34000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('10096-0285', 'http://dummyimage.com/109x100.png/cc0000/ffffff', 'Fruit Juices', 53000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('49781-062', 'http://dummyimage.com/114x100.png/ff4444/ffffff', 'Iced Tea', 46000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('49035-667', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', 'Irish Coffee', 48000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('37205-694', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 'Macchiato', 55000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('47682-231', 'http://dummyimage.com/102x100.png/cc0000/ffffff', 'Iced Coffee', 34000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('68788-9096', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'Flat White', 37000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('51079-896', 'http://dummyimage.com/246x100.png/ff4444/ffffff', 'Fruit Juices', 58000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('52125-415', 'http://dummyimage.com/141x100.png/dddddd/000000', 'Iced Tea', 31000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('52374-101', 'http://dummyimage.com/109x100.png/cc0000/ffffff', 'Irish Coffee', 39000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('43406-0152', 'http://dummyimage.com/114x100.png/ff4444/ffffff', 'Macchiato', 40000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('36987-2315', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', 'Iced Coffee', 30000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('55154-4055', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 'Flat White', 37000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('42507-166', 'http://dummyimage.com/102x100.png/cc0000/ffffff', 'Fruit Juices', 34000);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('0409-7077', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'Iced Tea', 31000);

    --insert nguyen_lieu
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('52125-377', 'Cà phê', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('52343-020', 'sữa tươi', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('51147-5010', 'cacao', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('60429-526', 'đường', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('33261-484', 'espresso', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('0781-3428', 'Macchiato', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('0615-7832', 'Mocha', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('68258-3014', 'bột matcha', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('37808-425', 'trà', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('51531-6743', 'bột năng lượng', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('59779-084', 'bạc hà', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('52125-215', 'sữa chua', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('51345-067', 'mật ong', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('10337-163', 'chuối', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('57297-208', 'dừa', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('0430-0720', 'bột nghệ', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('54868-4277', 'chanh', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('60505-3409', 'soda', 'ml');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('33342-088', 'mật cytrynowy', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('63459-512', 'rượu', 'ml');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('52667-003', 'vani', 'ml');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('11523-0435', 'đường cát trắng', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('52125-691', 'đường nâu', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('0135-0140', 'đường xay nhuyễn', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('10345-034', 'kem tươi', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('0904-6178', 'nước ép trái cây', 'kg');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('63402-206', 'soda chanh', 'ml');
insert into nguyen_lieu (Ma_nguyen_lieu, Ten_nguyen_lieu, Don_vi) values ('0904-6324', 'siro việt quất.', 'ml');    
    
    -- insert nhan_vien
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('a39f4ae9-86fc-44f9-afb1-0d1ae7c3a7ce', 'http://dummyimage.com/235x100.png/cc0000/ffffff', 'Judie Warn', '1997-12-31', 'Nam', '34 Jana Alley', '984-567-6972', '6759145119439928', 'Undergraduate Degree', 'jwarn0', '$2a$04$7xdoi53NSHrs6uwGm3glB.YUNu3r1/wvbj8ylkA.9BuP61D6O.Quu');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('31ecdf55-d4f5-4bb9-9305-1c240a8cd4da', 'http://dummyimage.com/167x100.png/dddddd/000000', 'La verne Patient', '1999-11-22', 'Nam', '91 Esch Drive', '634-927-3666', '3538778738949094', 'College Degree', 'lverne1', '$2a$04$4Z4DzNRAgKoEMdjAUAFk5.YmF.aitJiLDyXx98Sob8.Dk/Srkpgqy');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Glenden Boldt', '1998-05-16', 'Khác', '4457 Coolidge Point', '876-529-4184', '3559712885441690', 'Undergraduate Degree', 'gboldt2', '$2a$04$HFOseFZ01xvYFBts3BHcbe4oluKiMwyvIRqKy7mgxKApQ/dqd/D2.');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('240a0fab-6c8e-40ab-8980-e9921f8b0b81', 'http://dummyimage.com/122x100.png/5fa2dd/ffffff', 'Whitney Sartin', '2003-08-15', 'Khác', '41518 Briar Crest Park', '256-753-0945', '5602230308776008', 'Undergraduate Degree', 'wsartin3', '$2a$04$o8MHMTip7.yoCtP5iMVV0.gxkiKaynursqNlvy3PlHay9X3.YHnuG');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('fc82e0b2-1947-4a83-9031-746522aad190', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 'Conni Darcey', '1995-04-03', 'Nữ', '3 Loeprich Lane', '233-606-6216', '6304930475125416015', 'Undergraduate Degree', 'cdarcey4', '$2a$04$7f6/MvXo0dloqLOk8b1IMu69uYcs6088F.khn28Y5USOmPch5RMf.');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', 'http://dummyimage.com/100x100.png/dddddd/000000', 'Broddy Arnowicz', '2003-08-25', 'Nam', '9652 Forest Lane', '540-643-1501', '5020931783395479', 'College Degree', 'barnowicz5', '$2a$04$eKGmCwPPloQcioHGYEoFHOXz80hUMOr0inrAwhxi/OuQSxV/2j.Ou');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('44181f87-9211-43ad-953d-500d67333707', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 'Kamillah Skein', '1994-01-16', 'Khác', '4769 Johnson Place', '780-348-6924', '3585895056249220', 'High School Diploma', 'kskein6', '$2a$04$qkal/Att4nNi3cNsIEuUxeWLSPidPqhxD60RtHQI1qt5C/Kwcxff6');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('b5dafcbc-ab61-4489-8c18-ec9047539c65', 'http://dummyimage.com/185x100.png/cc0000/ffffff', 'Doloritas Egleton', '1988-12-16', 'Khác', '6663 Pine View Crossing', '357-610-6111', '5610108690811627', 'Undergraduate Degree', 'degleton7', '$2a$04$5sntZMYtZfZdSAAdMXCGm.nOtwtyFu4EUtJWIZ0ClOwDRDRtAv8ZG');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', 'http://dummyimage.com/104x100.png/cc0000/ffffff', 'Prescott Braycotton', '1998-04-13', 'Khác', '1 Harbort Way', '314-936-5752', '3563437380830379', 'Undergraduate Degree', 'pbraycotton8', '$2a$04$YZE8TjldM5RkYQUi2ik7reuGi15gjhMdOHdd8MkrRKX2DZTCMNi6W');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('37e46bad-b103-4701-885c-65f677030cff', 'http://dummyimage.com/147x100.png/ff4444/ffffff', 'Alameda Dibbe', '1986-02-11', 'Nam', '2 Kingsford Trail', '245-952-6388', '201971775329757', 'Undergraduate Degree', 'adibbe9', '$2a$04$GhpQD5TriD/XonHePP1Kbeu3MUCfpcFIQdhsjZOlRNf2brhugAE/G');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('9c622593-de61-472d-bd4a-f9207634b012', 'http://dummyimage.com/231x100.png/5fa2dd/ffffff', 'Hesther Torri', '1990-03-15', 'Nam', '64795 Monument Circle', '616-206-3848', '3586731727633030', 'High School Diploma', 'htorria', '$2a$04$Aw0eXyRzrut.HNnsJFgmvevi6zsfy3T21peXXvUxCrvJBiVqv7tKK');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('a374a2a7-d798-4fe6-81eb-dfaabd876879', 'http://dummyimage.com/245x100.png/5fa2dd/ffffff', 'Jacquenetta Degnen', '1990-01-04', 'Khác', '3 Coolidge Park', '693-476-5511', '6375399174824698', 'College Degree', 'jdegnenb', '$2a$04$SGrGbUt2CKM4utgfBNUWUOi29SFh4yaBqeJ3moCtJwoi14FA.mIBa');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('edd37519-af0a-489c-922e-c3830322a4b3', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'Joan Beade', '1994-03-22', 'Khác', '58 5th Court', '149-362-6036', '6709355852303500230', 'College Degree', 'jbeadec', '$2a$04$GrQiJ1ixBSmrePb1WxvfY.9vtG4.B4SHw8QY1MX38HqqoFUHTXzLO');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('e609bfbb-ea73-47aa-9cc2-764aed0ece2d', 'http://dummyimage.com/185x100.png/5fa2dd/ffffff', 'Lian Camplen', '1998-03-21', 'Nam', '9 Waxwing Drive', '990-705-0186', '3536417385831816', 'High School Diploma', 'lcamplend', '$2a$04$G8GqSPmXBFmuxloUZSzfZ.QD75ts.G4Ln1xGGeBRcBxoILr5.4/9S');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('e311ff71-c613-4735-9717-3593ef932681', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', 'Alonzo Kirvell', '1988-01-08', 'Nam', '30869 Tennessee Plaza', '187-806-0161', '490594315453187285', 'College Degree', 'akirvelle', '$2a$04$Jh3fC765YnjtIAFM5Uf/4usnIIu2QkfdXZRCtxgHcZTpTP5ywCqnC');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('6a53092b-226d-4d6b-9792-6911b0947ed7', 'http://dummyimage.com/106x100.png/ff4444/ffffff', 'Tasha Cholton', '1995-06-13', 'Nữ', '2825 Oneill Circle', '661-172-9847', '3561217883814597', 'Undergraduate Degree', 'tcholtonf', '$2a$04$mWFS.m9sGZbOAJROBbv9aOwB3UPGKc07BZi09Gl6lQp0Xjg./nax2');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('59b8324f-4989-479e-a34c-3aca1b4fcefe', 'http://dummyimage.com/153x100.png/5fa2dd/ffffff', 'Bernardine Peery', '1991-04-18', 'Nam', '709 Mccormick Point', '855-368-4102', '3552142949315705', 'High School Diploma', 'bpeeryg', '$2a$04$BEaJYLqIaISACpfj1I4sN.UvgxAW2f5U/7UWQO7j9JCetEN8qc91i');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', 'http://dummyimage.com/111x100.png/cc0000/ffffff', 'Ladonna Kidman', '2003-01-10', 'Khác', '8460 Blackbird Drive', '156-343-8904', '3545299689531220', 'College Degree', 'lkidmanh', '$2a$04$YdIXXWvXenro47eYLb3SI.ra0mroX96U.1J2MYrOw4mzJTonY5.om');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('acc0e23a-e1b7-44f0-bed6-c988c848667b', 'http://dummyimage.com/182x100.png/dddddd/000000', 'Salome Egre', '2004-07-04', 'Khác', '97074 Fulton Point', '953-662-9358', '4913074243152983', 'High School Diploma', 'segrei', '$2a$04$ux4k4V/E1Rq2GZz1YDQKoe.XBF07yulVeh1KpnYzgRzIDV9eNyFza');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('2f8ee2cf-c3ab-4531-a575-c0ca002b1a14', 'http://dummyimage.com/172x100.png/5fa2dd/ffffff', 'Vannie Barthropp', '2004-07-10', 'Khác', '88383 Dorton Park', '786-749-0680', '3565514725973664', 'High School Diploma', 'vbarthroppj', '$2a$04$8cpffRqLAcj1wrv5.hBVv.RvCwhaKE5aSH0hnVSYiRnBRnwdQawpK');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('0c65484e-adac-4ae5-8b89-ca36c0ea23cb', 'http://dummyimage.com/143x100.png/dddddd/000000', 'Ebony Pippard', '2001-06-13', 'Khác', '6 Summit Junction', '304-401-8293', '3578950072536453', 'High School Diploma', 'epippardk', '$2a$04$8OfNSRtiRRG/lgCQfYxwXegjN6uI5yQZ9bPnCsaJ.rRe0sjHCiS1y');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('4c8d18e0-267d-43b9-9775-375b5f1d2fe5', 'http://dummyimage.com/147x100.png/5fa2dd/ffffff', 'Carlen Le Prevost', '1996-04-15', 'Nữ', '90 Kinsman Crossing', '761-519-4282', '3557855588407450', 'High School Diploma', 'clel', '$2a$04$FIkj/dc8v.5WuNNwc0jgVO0yrai6Q/JiMxPj6hlm.RJzTklY0wgRe');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', 'http://dummyimage.com/126x100.png/dddddd/000000', 'Eunice Tranter', '2001-01-13', 'Nữ', '50 Havey Hill', '216-859-7950', '6706394703763350', 'College Degree', 'etranterm', '$2a$04$/9adpIRQz.vlk0.L9aami..om1Bidh7uBVPrWP4SKIBGA/ciF6E7i');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('a8fe1d21-4609-402a-8197-e59fc7062325', 'http://dummyimage.com/170x100.png/ff4444/ffffff', 'Cosetta Bleasdale', '2001-11-29', 'Nam', '640 Westend Pass', '851-735-7125', '5602229206687895', 'Undergraduate Degree', 'cbleasdalen', '$2a$04$gywIzoRWpjrWbb1E886Tae2y5Z2dcxHaSL86Nos0WMo8LPLcf09rm');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('8583f8fb-4076-4028-81ef-b7b8b85188d0', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'Kay Jeannard', '1995-09-23', 'Nữ', '6766 Dottie Road', '701-220-5480', '50180733591726909', 'High School Diploma', 'kjeannardo', '$2a$04$zTDPVv.40c6JpMaK1QMnte9YuVBYcwYhLxWUzb4zcHJSSuHfczlwu');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('462f401c-7afe-44bd-a28d-2db5baad569a', 'http://dummyimage.com/161x100.png/dddddd/000000', 'Sophie Matteuzzi', '2001-05-23', 'Nam', '80 Holmberg Trail', '249-703-0072', '5517076922801407', 'Undergraduate Degree', 'smatteuzzip', '$2a$04$89wDFiuX89K5w7s.qOMp6eNeA7Y52p2z.v90hB5pjmP7/Vu1/oL8e');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('c700ff6e-a58e-48c1-a530-b3b4b3385688', 'http://dummyimage.com/136x100.png/dddddd/000000', 'Herc Edgecumbe', '1997-08-21', 'Nam', '1343 Hudson Lane', '869-700-8309', '3539569781473481', 'College Degree', 'hedgecumbeq', '$2a$04$8Ze/Rp1.587HaZDCCun7geo.FXJL6n7hFQj/Ply/yDmbSOjc28P2i');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'http://dummyimage.com/111x100.png/cc0000/ffffff', 'Lorin Taaffe', '1993-07-27', 'Nam', '1573 Fremont Court', '385-773-4816', '4026412474650735', 'College Degree', 'ltaaffer', '$2a$04$B9qfKn67V8k7vgTr5VU5wutWqqF8QhqaGz00GfH5P0IrsTv3Dc2G2');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('68120b5e-147b-4d1d-973a-6e3ec55d15fe', 'http://dummyimage.com/104x100.png/dddddd/000000', 'Berry Capineer', '1990-10-19', 'Khác', '28 Homewood Hill', '311-456-4141', '374288542812945', 'College Degree', 'bcapineers', '$2a$04$i6GPwSIBEbMbMRZzni5Qwe1TsJKfUSaT9URVGxYHtKNOR/eqhROqi');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('053381de-24dc-4611-aed1-af75bb2544da', 'http://dummyimage.com/198x100.png/5fa2dd/ffffff', 'Arlyne Skey', '2003-02-07', 'Nam', '5 Dottie Road', '797-600-2626', '6767608674538863', 'Undergraduate Degree', 'askeyt', '$2a$04$Lu5wMr1/PPK451JvqlroA.t8JEmaBmGTAJoJ1FumLMfoDH/xuDt9G');


    -- insert NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG.sql
DROP TRIGGER IF EXISTS trigger_check_luong_toi_thieu_nv_lam_viec
ON NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG;

insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('3/21/2022', '7/29/2023', 'phục vụ', 'a39f4ae9-86fc-44f9-afb1-0d1ae7c3a7ce', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('6/1/2022', '12/13/2022', 'quản lý', '31ecdf55-d4f5-4bb9-9305-1c240a8cd4da', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('7/16/2022', '2/11/2022', 'pha chế', 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('4/28/2022', '10/23/2022', 'pha chế', '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('4/2/2022', '6/11/2022', 'bảo vệ', 'fc82e0b2-1947-4a83-9031-746522aad190', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('1/25/2022', '12/17/2023', 'pha chế', '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('3/26/2022', '7/28/2023', 'phục vụ', '44181f87-9211-43ad-953d-500d67333707', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('9/6/2022', '6/6/2022', 'pha chế', 'b5dafcbc-ab61-4489-8c18-ec9047539c65', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('3/12/2022', '2/20/2023', 'pha chế', 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('10/10/2022', '4/3/2023', 'quét dọn', '37e46bad-b103-4701-885c-65f677030cff', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('5/3/2022', '12/24/2023', 'phục vụ', '9c622593-de61-472d-bd4a-f9207634b012', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('7/24/2022', '11/22/2022', 'bảo vệ', 'a374a2a7-d798-4fe6-81eb-dfaabd876879', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('8/18/2022', '10/17/2022', 'phục vụ', 'edd37519-af0a-489c-922e-c3830322a4b3', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('1/1/2022', '9/21/2023', 'quét dọn', 'e609bfbb-ea73-47aa-9cc2-764aed0ece2d', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('2/8/2022', '6/29/2022', 'quét dọn', 'e311ff71-c613-4735-9717-3593ef932681', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('3/2/2022', '9/1/2022', 'bảo vệ', '6a53092b-226d-4d6b-9792-6911b0947ed7', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('9/13/2022', '11/28/2023', 'quét dọn', '59b8324f-4989-479e-a34c-3aca1b4fcefe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('2/14/2022', '12/14/2022', 'bảo vệ', 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('1/24/2022', '8/12/2023', 'bảo vệ', 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('7/25/2022', '7/22/2023', 'pha chế', '2f8ee2cf-c3ab-4531-a575-c0ca002b1a14', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('3/22/2022', '7/27/2023', 'quản lý', '0c65484e-adac-4ae5-8b89-ca36c0ea23cb', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('2/16/2022', '6/12/2023', 'quét dọn', '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('4/13/2022', '4/6/2023', 'phục vụ', '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('2/27/2022', '8/16/2023', 'quét dọn', 'a8fe1d21-4609-402a-8197-e59fc7062325', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('5/4/2022', '10/8/2022', 'quét dọn', '8583f8fb-4076-4028-81ef-b7b8b85188d0', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('1/25/2022', '12/2/2023', 'quét dọn', '462f401c-7afe-44bd-a28d-2db5baad569a', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('7/2/2022', '5/17/2022', 'quét dọn', 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('11/22/2022', '11/4/2022', 'bảo vệ', '0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('7/24/2022', '8/9/2023', 'quét dọn', '68120b5e-147b-4d1d-973a-6e3ec55d15fe', '307ac585-7af5-4642-80b2-99726495a060');
insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) values ('3/12/2022', '6/13/2022', 'phục vụ', '053381de-24dc-4611-aed1-af75bb2544da', '79f44967-7044-48f1-8b24-69386cc1b50a');

  -- insert don_hang.sql
  DROP TRIGGER IF EXISTS trigger_check_dung_tai_quan
ON DON_HANG;
DROP TRIGGER IF EXISTS trigger_check_km_dh
ON DON_HANG;
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('43063-088', '2023-03-13', 'hoàn thành pha chế', false, '37e46bad-b103-4701-885c-65f677030cff', '79f44967-7044-48f1-8b24-69386cc1b50a', '631-827-0689');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63667-224', '2023-05-06', 'đang pha chế', true, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '79f44967-7044-48f1-8b24-69386cc1b50a', '486-505-6011');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('41163-917', '2023-02-07', 'đang pha chế', false, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '888-864-2094');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('68788-0633', '2023-02-19', 'hoàn thành pha chế', false, 'e609bfbb-ea73-47aa-9cc2-764aed0ece2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '312-522-0234');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63323-024', '2023-05-12', 'hủy', true, '0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '285-124-0684');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('35000-879', '2023-04-26', 'đã phục vụ', false, 'e311ff71-c613-4735-9717-3593ef932681', '79f44967-7044-48f1-8b24-69386cc1b50a', '803-190-0466');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('33261-470', '2023-03-11', 'hoàn thành pha chế', false, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '307ac585-7af5-4642-80b2-99726495a060', '219-576-9202');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('44567-711', '2023-03-17', 'hủy', true, '462f401c-7afe-44bd-a28d-2db5baad569a', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '948-879-8012');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('50845-0043', '2023-02-15', 'hoàn thành pha chế', false, '6a53092b-226d-4d6b-9792-6911b0947ed7', '79f44967-7044-48f1-8b24-69386cc1b50a', '380-923-0513');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0485-0210', '2023-05-27', 'đang pha chế', true, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '307ac585-7af5-4642-80b2-99726495a060', '200-671-6154');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('65044-9942', '2023-06-12', 'đã phục vụ', false, 'e311ff71-c613-4735-9717-3593ef932681', '79f44967-7044-48f1-8b24-69386cc1b50a', '162-125-9389');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('55312-630', '2023-03-24', 'đang pha chế', true, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '79f44967-7044-48f1-8b24-69386cc1b50a', '409-243-7316');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0591-3592', '2023-05-16', 'hoàn thành pha chế', true, '31ecdf55-d4f5-4bb9-9305-1c240a8cd4da', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '789-462-8304');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0703-3333', '2023-04-01', 'đã phục vụ', true, '59b8324f-4989-479e-a34c-3aca1b4fcefe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '219-576-9202');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('53964-002', '2023-01-10', 'đang pha chế', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', '79f44967-7044-48f1-8b24-69386cc1b50a', '470-727-2049');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('21695-782', '2023-05-20', 'đang pha chế', true, '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '307ac585-7af5-4642-80b2-99726495a060', '595-439-7011');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('59779-182', '2023-03-26', 'hoàn thành pha chế', false, 'fc82e0b2-1947-4a83-9031-746522aad190', '307ac585-7af5-4642-80b2-99726495a060', '789-462-8304');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63629-1839', '2023-04-12', 'đã phục vụ', false, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '307ac585-7af5-4642-80b2-99726495a060', '848-563-6903');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('55714-4521', '2023-01-11', 'đã phục vụ', true, '68120b5e-147b-4d1d-973a-6e3ec55d15fe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '473-412-2309');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0135-0519', '2023-02-19', 'hoàn thành pha chế', false, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '79f44967-7044-48f1-8b24-69386cc1b50a', '948-879-8012');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('49288-0435', '2023-05-12', 'hủy', true, '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', '307ac585-7af5-4642-80b2-99726495a060', '676-532-0672');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0187-0500', '2023-04-29', 'đã phục vụ', false, 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '307ac585-7af5-4642-80b2-99726495a060', '409-243-7316');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('64679-964', '2023-05-09', 'đang pha chế', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '911-690-2201');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0078-0345', '2023-04-15', 'hoàn thành pha chế', true, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', '79f44967-7044-48f1-8b24-69386cc1b50a', '429-740-1485');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('67234-022', '2023-06-13', 'đã phục vụ', false, '6a53092b-226d-4d6b-9792-6911b0947ed7', '79f44967-7044-48f1-8b24-69386cc1b50a', '673-912-3161');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('50436-6112', '2023-03-14', 'hủy', false, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', '307ac585-7af5-4642-80b2-99726495a060', '673-912-3161');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('49349-501', '2023-04-10', 'hủy', false, 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '79f44967-7044-48f1-8b24-69386cc1b50a', '511-499-0821');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('13537-004', '2023-05-19', 'đã phục vụ', false, '0c65484e-adac-4ae5-8b89-ca36c0ea23cb', '307ac585-7af5-4642-80b2-99726495a060', '172-417-6186');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('54458-896', '2023-05-15', 'hủy', false, 'e311ff71-c613-4735-9717-3593ef932681', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '511-499-0821');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('76420-755', '2023-05-04', 'đã phục vụ', true, 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '79f44967-7044-48f1-8b24-69386cc1b50a', '911-690-2201');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('62654-230', '2023-03-03', 'hủy', true, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '307ac585-7af5-4642-80b2-99726495a060', '676-532-0672');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('65841-649', '2023-03-21', 'đã phục vụ', true, '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '942-875-1552');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0378-3023', '2023-01-15', 'hủy', true, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '79f44967-7044-48f1-8b24-69386cc1b50a', '848-563-6903');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63148-118', '2023-05-11', 'đang pha chế', false, '2f8ee2cf-c3ab-4531-a575-c0ca002b1a14', '307ac585-7af5-4642-80b2-99726495a060', '172-417-6186');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('67386-211', '2023-03-08', 'đã phục vụ', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '522-231-0059');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('61589-6505', '2023-02-12', 'hủy', true, '59b8324f-4989-479e-a34c-3aca1b4fcefe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '511-499-0821');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('37000-331', '2023-05-30', 'đã phục vụ', false, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '307ac585-7af5-4642-80b2-99726495a060', '821-341-9982');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('37205-781', '2023-05-29', 'hủy', true, '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '307ac585-7af5-4642-80b2-99726495a060', '631-827-0689');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('51991-628', '2023-02-24', 'hủy', false, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '429-740-1485');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('42627-211', '2023-03-26', 'hủy', true, '59b8324f-4989-479e-a34c-3aca1b4fcefe', '307ac585-7af5-4642-80b2-99726495a060', '631-827-0689');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0781-5578', '2023-03-05', 'hoàn thành pha chế', true, '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '307ac585-7af5-4642-80b2-99726495a060', '948-879-8012');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0187-0792', '2023-05-28', 'hủy', true, '0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '776-204-1912');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('54868-0235', '2023-05-25', 'đang pha chế', false, '59b8324f-4989-479e-a34c-3aca1b4fcefe', '307ac585-7af5-4642-80b2-99726495a060', '200-671-6154');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0268-1322', '2023-02-15', 'hoàn thành pha chế', false, '68120b5e-147b-4d1d-973a-6e3ec55d15fe', '307ac585-7af5-4642-80b2-99726495a060', '429-740-1485');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('51514-0301', '2023-03-31', 'hủy', true, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '307ac585-7af5-4642-80b2-99726495a060', '172-417-6186');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('59779-294', '2023-03-30', 'đang pha chế', true, '6a53092b-226d-4d6b-9792-6911b0947ed7', '307ac585-7af5-4642-80b2-99726495a060', '181-133-2899');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('64220-425', '2023-04-03', 'đã phục vụ', true, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '79f44967-7044-48f1-8b24-69386cc1b50a', '252-780-4243');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('42211-102', '2023-03-04', 'hủy', false, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '307ac585-7af5-4642-80b2-99726495a060', '162-125-9389');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('50802-001', '2023-05-29', 'đang pha chế', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '473-412-2309');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('21695-497', '2023-03-24', 'đang pha chế', true, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '79f44967-7044-48f1-8b24-69386cc1b50a', '213-241-6472');


 -- insert hoa_don_nhap_kho.sql

insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('34666-171', '10/11/2023', 'Leffler and Sons', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('41250-272', '9/16/2023', 'Altenwerth LLC', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('55154-0358', '5/30/2023', 'Conn-Hand', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('15127-151', '8/17/2023', 'Monahan Inc', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('65734-000', '8/12/2023', 'Hansen-Schulist', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('55513-144', '2/24/2023', 'Cummings, Roob and O''Connell', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0597-0075', '10/31/2023', 'Kozey, Johns and Gibson', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0025-1891', '1/19/2023', 'Runolfsson and Sons', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('52124-0113', '9/4/2023', 'Cremin Group', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0615-1571', '10/8/2023', 'Sanford and Sons', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('49349-953', '4/2/2023', 'Heidenreich-Schultz', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('64175-991', '7/10/2023', 'Barton, Reichert and Roob', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('55910-371', '12/8/2022', 'Dare, Stroman and Fisher', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('52584-047', '5/8/2023', 'Cremin-Wyman', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0185-4351', '10/26/2023', 'Grant, Prosacco and Blanda', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('67544-318', '10/6/2023', 'Quigley Inc', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('62011-0065', '12/3/2022', 'McGlynn-Hettinger', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('24724-030', '9/18/2023', 'Rohan, Stokes and Ondricka', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('64980-158', '4/11/2023', 'Bogan, Sporer and Treutel', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('49527-801', '6/30/2023', 'Rogahn, Bartoletti and Harvey', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('61924-266', '7/24/2023', 'Lebsack Inc', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('36987-3431', '5/25/2023', 'Grady-Simonis', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('50436-3101', '4/18/2023', 'Sporer-Wuckert', '307ac585-7af5-4642-80b2-99726495a060');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0409-7931', '6/13/2023', 'Kuvalis-Schumm', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('68745-1087', '6/23/2023', 'Rutherford, Hintz and Lemke', '79f44967-7044-48f1-8b24-69386cc1b50a');

-- insert ca_lam_viec.sql


DROP TRIGGER IF EXISTS trigger_check_tg_CLV_CH
ON CA_LAM_VIEC;

insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('54868-4349', 1.4, '6:00', '9:00', 7, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('51367-005', 1.8, '6:00', '9:00', 8, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('42507-337', 1.2, '6:00', '9:00', 8, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('50436-2000', 1.6, '9:00', '12:00', 9, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('36987-1043', 1.8, '9:00', '12:00', 5, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('50387-300', 1.2, '9:00', '12:00', 6, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('15751-2248', 1.8, '12:00', '15:00', 6, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('41520-130', 1.7, '12:00', '15:00', 8, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('17271-501', 1.7, '12:00', '15:00', 10, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('49349-043', 1.8, '15:00', '19:00', 5, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('68788-0713', 1.0, '15:00', '19:00', 8, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('54868-0451', 1.4, '15:00', '19:00', 5, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
    -- end
    COMMIT;