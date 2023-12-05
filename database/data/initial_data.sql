-- run the following command when excute query failed, this will rollback transaction (excute only this command, not the whole file)
-- ROLLBACK;

BEGIN;

    -- initial data in here

    -- insert cua_hang
insert into CUA_HANG (Ma_cua_hang,Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua, Luong_thang_toi_thieu, Luong_gio_toi_thieu) values ('79f44967-7044-48f1-8b24-69386cc1b50a','Stokes-Fahey', '1 Vera Street', '732-675-2337', 'nbennell0@economist.com', TO_TIMESTAMP('6:00','HH24:MI'), TO_TIMESTAMP('19:00','HH24:MI'), 3000000, 40000);
insert into CUA_HANG (Ma_cua_hang,Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua, Luong_thang_toi_thieu, Luong_gio_toi_thieu) values ('307ac585-7af5-4642-80b2-99726495a060','Roberts-MacGyver', '14 Burning Wood Drive', '537-129-1740', 'bcheng1@berkeley.edu', TO_TIMESTAMP('6:00','HH24:MI'), TO_TIMESTAMP('19:00','HH24:MI'), 3000000, 40000);
insert into CUA_HANG (Ma_cua_hang,Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua, Luong_thang_toi_thieu, Luong_gio_toi_thieu) values ('d40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7','Gleichner, Rolfson and Rohan', '94772 Grover Park', '787-905-9252', 'mlhomme2@usa.gov', TO_TIMESTAMP('6:00','HH24:MI'), TO_TIMESTAMP('19:00','HH24:MI'), 3000000, 40000);

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
INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('68786-220', 'Twinkling Tinsel Twilight', TO_DATE('2023-11-03', 'YYYY-MM-DD'), TO_DATE('2023-11-26','YYYY-MM-DD'), 43196, TRUE, FALSE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('37808-552', 'Merry Mitten Mingle', TO_DATE('2023-11-02', 'YYYY-MM-DD'), TO_DATE('2023-11-29','YYYY-MM-DD'), 86784, TRUE, FALSE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('49288-0004', 'Winter Wonderland Day', TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-11-27','YYYY-MM-DD'), 62179, FALSE, TRUE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('63629-3760', 'Joyful Jingle Jam', TO_DATE('2023-11-03', 'YYYY-MM-DD'), TO_DATE('2023-11-26','YYYY-MM-DD'), 61916, FALSE, TRUE, TRUE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('42507-692', 'Cocoa and Carols Carnival', TO_DATE('2023-11-02', 'YYYY-MM-DD'), TO_DATE('2023-11-28','YYYY-MM-DD'), 45444, FALSE, TRUE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('41163-742', 'Sparkling Snowflake Spectacle', TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-11-28','YYYY-MM-DD'), 44494, TRUE, FALSE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('64117-178', 'Sparkling Snowflake Spectacle', TO_DATE('2023-11-02', 'YYYY-MM-DD'), TO_DATE('2023-11-26','YYYY-MM-DD'), 92996, TRUE, FALSE, TRUE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('68084-523', 'Festive Feathers Festival', TO_DATE('2023-11-03', 'YYYY-MM-DD'), TO_DATE('2023-11-29','YYYY-MM-DD'), 51690, TRUE, FALSE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('68382-228', 'Enchanted Evergreen', TO_DATE('2023-11-03', 'YYYY-MM-DD'), TO_DATE('2023-11-29','YYYY-MM-DD'), 75582, FALSE, TRUE, FALSE);

INSERT INTO khuyen_mai (Ma_khuyen_mai, Ten_khuyen_mai, Thoi_gian_bat_dau, Thoi_gian_ket_thuc, Gia_tri_cho_don_hang_toi_thieu, La_KM_cho_DH, La_KM_cho_MON, La_KM_cho_CH) 
VALUES ('42388-012', 'Cocoa and Carols Carnival', TO_DATE('2023-11-02', 'YYYY-MM-DD'), TO_DATE('2023-11-28','YYYY-MM-DD'), 88646, TRUE, FALSE, TRUE);

    
    -- insert mon
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('0527-1351', 'https://robohash.org/porrosedperferendis.png?size=50x50&set=set1', 'Midnight Mocha Madness', 95392);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('55319-213', 'https://robohash.org/nesciuntharumlaborum.png?size=50x50&set=set1', 'Caramel Euphoria', 73462);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('63824-861', 'https://robohash.org/laboriosamfugitut.png?size=50x50&set=set1', 'Hazelnut Hug', 64194);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('58118-1392', 'https://robohash.org/sintvoluptateexcepturi.png?size=50x50&set=set1', 'Vanilla Velvet Bliss', 60076);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('68462-296', 'https://robohash.org/delectussequiquia.png?size=50x50&set=set1', 'Espresso Symphony', 84562);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('51346-081', 'https://robohash.org/sedarchitectomagnam.png?size=50x50&set=set1', 'Raspberry Ripple Delight', 82280);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('21695-197', 'https://robohash.org/nullaquamenim.png?size=50x50&set=set1', 'Coconut Cream Dream', 63846);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('49288-0258', 'https://robohash.org/totamculpaet.png?size=50x50&set=set1', 'Almond Joyful Brew', 57199);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('10477-1261', 'https://robohash.org/voluptatemaliquidnon.png?size=50x50&set=set1', 'Irish Cream Cascade', 70333);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('54569-1024', 'https://robohash.org/totampariaturnatus.png?size=50x50&set=set1', 'Chai Latte Serenity', 66314);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('47335-675', 'https://robohash.org/temporaporroquis.png?size=50x50&set=set1', 'Pumpkin Spice Paradise', 71658);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('52686-276', 'https://robohash.org/autconsequunturquos.png?size=50x50&set=set1', 'Tiramisu Temptation', 49368);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('54868-6223', 'https://robohash.org/exaspernaturoptio.png?size=50x50&set=set1', 'Honeyed Macadamia Magic', 69874);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('98132-700', 'https://robohash.org/initaquelaboriosam.png?size=50x50&set=set1', 'White Chocolate Wonderland', 82701);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('21130-044', 'https://robohash.org/etetipsum.png?size=50x50&set=set1', 'Maple Pecan Perfection', 42172);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('49967-790', 'https://robohash.org/rationeoditest.png?size=50x50&set=set1', 'Cinnamon Swirl Sensation', 55127);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('69249-000', 'https://robohash.org/eaqueidvoluptatem.png?size=50x50&set=set1', 'Peppermint Patty Pleasure', 33720);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('37808-773', 'https://robohash.org/consecteturvelitnatus.png?size=50x50&set=set1', 'Salted Caramel Carnival', 57549);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('98132-750', 'https://robohash.org/etutest.png?size=50x50&set=set1', 'Gingerbread Joyride', 47737);
insert into mon (Ma_mon, avatarUrl, Ten_mon, Gia_tien) values ('10237-820', 'https://robohash.org/ipsumassumendaerror.png?size=50x50&set=set1', 'Lavender Latte Love', 78049);

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
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('a39f4ae9-86fc-44f9-afb1-0d1ae7c3a7ce', 'http://dummyimage.com/235x100.png/cc0000/ffffff', 'Judie Warn', TO_DATE('1997-12-31', 'YYYY-MM-DD'), 'Nam', '34 Jana Alley', '984-567-6972', '6759145119439928', 'Undergraduate Degree', 'jwarn0', '$2a$04$7xdoi53NSHrs6uwGm3glB.YUNu3r1/wvbj8ylkA.9BuP61D6O.Quu');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('31ecdf55-d4f5-4bb9-9305-1c240a8cd4da', 'http://dummyimage.com/167x100.png/dddddd/000000', 'La verne Patient', TO_DATE('1999-11-22', 'YYYY-MM-DD'), 'Nam', '91 Esch Drive', '634-927-3666', '3538778738949094', 'College Degree', 'lverne1', '$2a$04$4Z4DzNRAgKoEMdjAUAFk5.YmF.aitJiLDyXx98Sob8.Dk/Srkpgqy');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Glenden Boldt', TO_DATE('1998-05-16', 'YYYY-MM-DD'), 'Nam', '4457 Coolidge Point', '876-529-4184', '3559712885441690', 'Undergraduate Degree', 'gboldt2', '$2a$04$HFOseFZ01xvYFBts3BHcbe4oluKiMwyvIRqKy7mgxKApQ/dqd/D2.');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('240a0fab-6c8e-40ab-8980-e9921f8b0b81', 'http://dummyimage.com/122x100.png/5fa2dd/ffffff', 'Whitney Sartin', TO_DATE('2003-08-15', 'YYYY-MM-DD'), 'Nam', '41518 Briar Crest Park', '256-753-0945', '5602230308776008', 'Undergraduate Degree', 'wsartin3', '$2a$04$o8MHMTip7.yoCtP5iMVV0.gxkiKaynursqNlvy3PlHay9X3.YHnuG');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('fc82e0b2-1947-4a83-9031-746522aad190', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 'Conni Darcey', TO_DATE('1995-04-03', 'YYYY-MM-DD'), 'Nu', '3 Loeprich Lane', '233-606-6216', '6304930475125416015', 'Undergraduate Degree', 'cdarcey4', '$2a$04$7f6/MvXo0dloqLOk8b1IMu69uYcs6088F.khn28Y5USOmPch5RMf.');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', 'http://dummyimage.com/100x100.png/dddddd/000000', 'Broddy Arnowicz', TO_DATE('2003-08-25', 'YYYY-MM-DD'), 'Nam', '9652 Forest Lane', '540-643-1501', '5020931783395479', 'College Degree', 'barnowicz5', '$2a$04$eKGmCwPPloQcioHGYEoFHOXz80hUMOr0inrAwhxi/OuQSxV/2j.Ou');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('44181f87-9211-43ad-953d-500d67333707', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 'Kamillah Skein', TO_DATE('1994-01-16', 'YYYY-MM-DD'), 'Nam', '4769 Johnson Place', '780-348-6924', '3585895056249220', 'High School Diploma', 'kskein6', '$2a$04$qkal/Att4nNi3cNsIEuUxeWLSPidPqhxD60RtHQI1qt5C/Kwcxff6');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('b5dafcbc-ab61-4489-8c18-ec9047539c65', 'http://dummyimage.com/185x100.png/cc0000/ffffff', 'Doloritas Egleton', TO_DATE('1988-12-16', 'YYYY-MM-DD'), 'Nam', '6663 Pine View Crossing', '357-610-6111', '5610108690811627', 'Undergraduate Degree', 'degleton7', '$2a$04$5sntZMYtZfZdSAAdMXCGm.nOtwtyFu4EUtJWIZ0ClOwDRDRtAv8ZG');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', 'http://dummyimage.com/104x100.png/cc0000/ffffff', 'Prescott Braycotton', TO_DATE('1998-04-13', 'YYYY-MM-DD'), 'Nam', '1 Harbort Way', '314-936-5752', '3563437380830379', 'Undergraduate Degree', 'pbraycotton8', '$2a$04$YZE8TjldM5RkYQUi2ik7reuGi15gjhMdOHdd8MkrRKX2DZTCMNi6W');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('37e46bad-b103-4701-885c-65f677030cff', 'http://dummyimage.com/147x100.png/ff4444/ffffff', 'Alameda Dibbe', TO_DATE('1986-02-11', 'YYYY-MM-DD'), 'Nam', '2 Kingsford Trail', '245-952-6388', '201971775329757', 'Undergraduate Degree', 'adibbe9', '$2a$04$GhpQD5TriD/XonHePP1Kbeu3MUCfpcFIQdhsjZOlRNf2brhugAE/G');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('9c622593-de61-472d-bd4a-f9207634b012', 'http://dummyimage.com/231x100.png/5fa2dd/ffffff', 'Hesther Torri', TO_DATE('1990-03-15', 'YYYY-MM-DD'), 'Nam', '64795 Monument Circle', '616-206-3848', '3586731727633030', 'High School Diploma', 'htorria', '$2a$04$Aw0eXyRzrut.HNnsJFgmvevi6zsfy3T21peXXvUxCrvJBiVqv7tKK');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('a374a2a7-d798-4fe6-81eb-dfaabd876879', 'http://dummyimage.com/245x100.png/5fa2dd/ffffff', 'Jacquenetta Degnen', TO_DATE('1990-01-04', 'YYYY-MM-DD'), 'Nam', '3 Coolidge Park', '693-476-5511', '6375399174824698', 'College Degree', 'jdegnenb', '$2a$04$SGrGbUt2CKM4utgfBNUWUOi29SFh4yaBqeJ3moCtJwoi14FA.mIBa');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('edd37519-af0a-489c-922e-c3830322a4b3', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'Joan Beade', TO_DATE('1994-03-22', 'YYYY-MM-DD'), 'Nam', '58 5th Court', '149-362-6036', '6709355852303500230', 'College Degree', 'jbeadec', '$2a$04$GrQiJ1ixBSmrePb1WxvfY.9vtG4.B4SHw8QY1MX38HqqoFUHTXzLO');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('e609bfbb-ea73-47aa-9cc2-764aed0ece2d', 'http://dummyimage.com/185x100.png/5fa2dd/ffffff', 'Lian Camplen', TO_DATE('1998-03-21', 'YYYY-MM-DD'), 'Nam', '9 Waxwing Drive', '990-705-0186', '3536417385831816', 'High School Diploma', 'lcamplend', '$2a$04$G8GqSPmXBFmuxloUZSzfZ.QD75ts.G4Ln1xGGeBRcBxoILr5.4/9S');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('e311ff71-c613-4735-9717-3593ef932681', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', 'Alonzo Kirvell', TO_DATE('1988-01-08', 'YYYY-MM-DD'), 'Nam', '30869 Tennessee Plaza', '187-806-0161', '490594315453187285', 'College Degree', 'akirvelle', '$2a$04$Jh3fC765YnjtIAFM5Uf/4usnIIu2QkfdXZRCtxgHcZTpTP5ywCqnC');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('6a53092b-226d-4d6b-9792-6911b0947ed7', 'http://dummyimage.com/106x100.png/ff4444/ffffff', 'Tasha Cholton', TO_DATE('1995-06-13', 'YYYY-MM-DD'), 'Nu', '2825 Oneill Circle', '661-172-9847', '3561217883814597', 'Undergraduate Degree', 'tcholtonf', '$2a$04$mWFS.m9sGZbOAJROBbv9aOwB3UPGKc07BZi09Gl6lQp0Xjg./nax2');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('59b8324f-4989-479e-a34c-3aca1b4fcefe', 'http://dummyimage.com/153x100.png/5fa2dd/ffffff', 'Bernardine Peery', TO_DATE('1991-04-18', 'YYYY-MM-DD'), 'Nam', '709 Mccormick Point', '855-368-4102', '3552142949315705', 'High School Diploma', 'bpeeryg', '$2a$04$BEaJYLqIaISACpfj1I4sN.UvgxAW2f5U/7UWQO7j9JCetEN8qc91i');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', 'http://dummyimage.com/111x100.png/cc0000/ffffff', 'Ladonna Kidman', TO_DATE('2003-01-10', 'YYYY-MM-DD'), 'Nam', '8460 Blackbird Drive', '156-343-8904', '3545299689531220', 'College Degree', 'lkidmanh', '$2a$04$YdIXXWvXenro47eYLb3SI.ra0mroX96U.1J2MYrOw4mzJTonY5.om');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('acc0e23a-e1b7-44f0-bed6-c988c848667b', 'http://dummyimage.com/182x100.png/dddddd/000000', 'Salome Egre', TO_DATE('2004-07-04', 'YYYY-MM-DD'), 'Nam', '97074 Fulton Point', '953-662-9358', '4913074243152983', 'High School Diploma', 'segrei', '$2a$04$ux4k4V/E1Rq2GZz1YDQKoe.XBF07yulVeh1KpnYzgRzIDV9eNyFza');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('2f8ee2cf-c3ab-4531-a575-c0ca002b1a14', 'http://dummyimage.com/172x100.png/5fa2dd/ffffff', 'Vannie Barthropp', TO_DATE('2004-07-10', 'YYYY-MM-DD'), 'Nam', '88383 Dorton Park', '786-749-0680', '3565514725973664', 'High School Diploma', 'vbarthroppj', '$2a$04$8cpffRqLAcj1wrv5.hBVv.RvCwhaKE5aSH0hnVSYiRnBRnwdQawpK');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('0c65484e-adac-4ae5-8b89-ca36c0ea23cb', 'http://dummyimage.com/143x100.png/dddddd/000000', 'Ebony Pippard', TO_DATE('2001-06-13', 'YYYY-MM-DD'), 'Nam', '6 Summit Junction', '304-401-8293', '3578950072536453', 'High School Diploma', 'epippardk', '$2a$04$8OfNSRtiRRG/lgCQfYxwXegjN6uI5yQZ9bPnCsaJ.rRe0sjHCiS1y');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('4c8d18e0-267d-43b9-9775-375b5f1d2fe5', 'http://dummyimage.com/147x100.png/5fa2dd/ffffff', 'Carlen Le Prevost', TO_DATE('1996-04-15', 'YYYY-MM-DD'), 'Nu', '90 Kinsman Crossing', '761-519-4282', '3557855588407450', 'High School Diploma', 'clel', '$2a$04$FIkj/dc8v.5WuNNwc0jgVO0yrai6Q/JiMxPj6hlm.RJzTklY0wgRe');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', 'http://dummyimage.com/126x100.png/dddddd/000000', 'Eunice Tranter', TO_DATE('2001-01-13', 'YYYY-MM-DD'), 'Nu', '50 Havey Hill', '216-859-7950', '6706394703763350', 'College Degree', 'etranterm', '$2a$04$/9adpIRQz.vlk0.L9aami..om1Bidh7uBVPrWP4SKIBGA/ciF6E7i');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('a8fe1d21-4609-402a-8197-e59fc7062325', 'http://dummyimage.com/170x100.png/ff4444/ffffff', 'Cosetta Bleasdale', TO_DATE('2001-11-29', 'YYYY-MM-DD'), 'Nam', '640 Westend Pass', '851-735-7125', '5602229206687895', 'Undergraduate Degree', 'cbleasdalen', '$2a$04$gywIzoRWpjrWbb1E886Tae2y5Z2dcxHaSL86Nos0WMo8LPLcf09rm');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('8583f8fb-4076-4028-81ef-b7b8b85188d0', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'Kay Jeannard', TO_DATE('1995-09-23', 'YYYY-MM-DD'), 'Nu', '6766 Dottie Road', '701-220-5480', '50180733591726909', 'High School Diploma', 'kjeannardo', '$2a$04$zTDPVv.40c6JpMaK1QMnte9YuVBYcwYhLxWUzb4zcHJSSuHfczlwu');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('462f401c-7afe-44bd-a28d-2db5baad569a', 'http://dummyimage.com/161x100.png/dddddd/000000', 'Sophie Matteuzzi', TO_DATE('2001-05-23', 'YYYY-MM-DD'), 'Nam', '80 Holmberg Trail', '249-703-0072', '5517076922801407', 'Undergraduate Degree', 'smatteuzzip', '$2a$04$89wDFiuX89K5w7s.qOMp6eNeA7Y52p2z.v90hB5pjmP7/Vu1/oL8e');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('c700ff6e-a58e-48c1-a530-b3b4b3385688', 'http://dummyimage.com/136x100.png/dddddd/000000', 'Herc Edgecumbe', TO_DATE('1997-08-21', 'YYYY-MM-DD'), 'Nam', '1343 Hudson Lane', '869-700-8309', '3539569781473481', 'College Degree', 'hedgecumbeq', '$2a$04$8Ze/Rp1.587HaZDCCun7geo.FXJL6n7hFQj/Ply/yDmbSOjc28P2i');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'http://dummyimage.com/111x100.png/cc0000/ffffff', 'Lorin Taaffe', TO_DATE('1993-07-27', 'YYYY-MM-DD'), 'Nam', '1573 Fremont Court', '385-773-4816', '4026412474650735', 'College Degree', 'ltaaffer', '$2a$04$B9qfKn67V8k7vgTr5VU5wutWqqF8QhqaGz00GfH5P0IrsTv3Dc2G2');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('68120b5e-147b-4d1d-973a-6e3ec55d15fe', 'http://dummyimage.com/104x100.png/dddddd/000000', 'Berry Capineer', TO_DATE('1990-10-19', 'YYYY-MM-DD'), 'Nam', '28 Homewood Hill', '311-456-4141', '374288542812945', 'College Degree', 'bcapineers', '$2a$04$i6GPwSIBEbMbMRZzni5Qwe1TsJKfUSaT9URVGxYHtKNOR/eqhROqi');
insert into NHAN_VIEN (Ma_nhan_vien, avatarUrl, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van, Ten_tai_khoan, Mat_khau_bam) values ('053381de-24dc-4611-aed1-af75bb2544da', 'http://dummyimage.com/198x100.png/5fa2dd/ffffff', 'Arlyne Skey', TO_DATE('2003-02-07', 'YYYY-MM-DD'), 'Nam', '5 Dottie Road', '797-600-2626', '6767608674538863', 'Undergraduate Degree', 'askeyt', '$2a$04$Lu5wMr1/PPK451JvqlroA.t8JEmaBmGTAJoJ1FumLMfoDH/xuDt9G');


    -- insert NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('3/21/2022', 'MM/DD/YYYY'), TO_DATE('7/29/2023', 'MM/DD/YYYY'), 'bồi bàn', 'a39f4ae9-86fc-44f9-afb1-0d1ae7c3a7ce', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('6/1/2022', 'MM/DD/YYYY'), TO_DATE('12/13/2022', 'MM/DD/YYYY'), 'quản lý', '31ecdf55-d4f5-4bb9-9305-1c240a8cd4da', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('7/16/2022', 'MM/DD/YYYY'), TO_DATE('2/11/2022', 'MM/DD/YYYY'), 'pha chế', 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('4/28/2022', 'MM/DD/YYYY'), TO_DATE('10/23/2022', 'MM/DD/YYYY'), 'pha chế', '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('4/2/2022', 'MM/DD/YYYY'), TO_DATE('6/11/2022', 'MM/DD/YYYY'), 'bồi bàn', 'fc82e0b2-1947-4a83-9031-746522aad190', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('1/25/2022', 'MM/DD/YYYY'), TO_DATE('12/17/2023', 'MM/DD/YYYY'), 'pha chế', '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('3/26/2022', 'MM/DD/YYYY'), TO_DATE('7/28/2023', 'MM/DD/YYYY'), 'bồi bàn', '44181f87-9211-43ad-953d-500d67333707', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('9/6/2022', 'MM/DD/YYYY'), TO_DATE('6/6/2022', 'MM/DD/YYYY'), 'pha chế', 'b5dafcbc-ab61-4489-8c18-ec9047539c65', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('3/12/2022', 'MM/DD/YYYY'), TO_DATE('2/20/2023', 'MM/DD/YYYY'), 'pha chế', 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('10/10/2022', 'MM/DD/YYYY'), TO_DATE('4/3/2023', 'MM/DD/YYYY'), 'quét dọn', '37e46bad-b103-4701-885c-65f677030cff', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('5/3/2022', 'MM/DD/YYYY'), TO_DATE('12/24/2023', 'MM/DD/YYYY'), 'bồi bàn', '9c622593-de61-472d-bd4a-f9207634b012', '307ac585-7af5-4642-80b2-99726495a060');
INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('7/24/2022', 'MM/DD/YYYY'), TO_DATE('11/22/2022', 'MM/DD/YYYY'), 'bồi bàn', 'a374a2a7-d798-4fe6-81eb-dfaabd876879', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('8/18/2022', 'MM/DD/YYYY'), TO_DATE('10/17/2022', 'MM/DD/YYYY'), 'bồi bàn', 'edd37519-af0a-489c-922e-c3830322a4b3', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('1/1/2022', 'MM/DD/YYYY'), TO_DATE('9/21/2023', 'MM/DD/YYYY'), 'quét dọn', 'e609bfbb-ea73-47aa-9cc2-764aed0ece2d', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('2/8/2022', 'MM/DD/YYYY'), TO_DATE('6/29/2022', 'MM/DD/YYYY'), 'quét dọn', 'e311ff71-c613-4735-9717-3593ef932681', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('3/2/2022', 'MM/DD/YYYY'), TO_DATE('9/1/2022', 'MM/DD/YYYY'), 'bồi bàn', '6a53092b-226d-4d6b-9792-6911b0947ed7', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('2/14/2022', 'MM/DD/YYYY'), TO_DATE('12/14/2022', 'MM/DD/YYYY'), 'bồi bàn', 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('4/13/2022', 'MM/DD/YYYY'), TO_DATE('4/6/2023', 'MM/DD/YYYY'), 'bồi bàn', '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('2/27/2022', 'MM/DD/YYYY'), TO_DATE('8/16/2023', 'MM/DD/YYYY'), 'quét dọn', 'a8fe1d21-4609-402a-8197-e59fc7062325', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('5/4/2022', 'MM/DD/YYYY'), TO_DATE('10/8/2022', 'MM/DD/YYYY'), 'quét dọn', '8583f8fb-4076-4028-81ef-b7b8b85188d0', '79f44967-7044-48f1-8b24-69386cc1b50a');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('1/25/2022', 'MM/DD/YYYY'), TO_DATE('12/2/2023', 'MM/DD/YYYY'), 'quét dọn', '462f401c-7afe-44bd-a28d-2db5baad569a', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('7/2/2022', 'MM/DD/YYYY'), TO_DATE('5/17/2022', 'MM/DD/YYYY'), 'quét dọn', 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '307ac585-7af5-4642-80b2-99726495a060');

insert into NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang)
values (TO_DATE('11/22/2022','MM/DD/YYYY'), TO_DATE('11/4/2022','MM/DD/YYYY'), 'bồi bàn', '0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('7/24/2022', 'MM/DD/YYYY'), TO_DATE('8/9/2023', 'MM/DD/YYYY'), 'quét dọn', '68120b5e-147b-4d1d-973a-6e3ec55d15fe', '307ac585-7af5-4642-80b2-99726495a060');

INSERT INTO NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG (Ngay_vao_lam, Ngay_nghi_viec, Vai_tro, Ma_nhan_vien, Ma_cua_hang) 
VALUES (TO_DATE('3/12/2022', 'MM/DD/YYYY'), TO_DATE('6/13/2022', 'MM/DD/YYYY'), 'bồi bàn', '053381de-24dc-4611-aed1-af75bb2544da', '79f44967-7044-48f1-8b24-69386cc1b50a');

    -- insert ban
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('67296-0619', 1, 'Trong', TO_DATE('8/26/2023', 'MM/DD/YYYY'), '631-827-0689', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('68682-368', 2, 'Dang Ngoi', TO_DATE('9/24/2023', 'MM/DD/YYYY'), '265-423-2506', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('50436-6527', 3, 'Trong', TO_DATE('8/24/2023', 'MM/DD/YYYY'), '303-767-5897', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('54868-4961', 4, 'Dat Truoc', TO_DATE('8/7/2023', 'MM/DD/YYYY'), '265-423-2506', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('68988-070', 5, 'Dang Ngoi', TO_DATE('9/16/2023', 'MM/DD/YYYY'), '252-780-4243', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('0121-0646', 6, 'Dang Ngoi', TO_DATE('11/28/2023', 'MM/DD/YYYY'), '200-671-6154', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('68391-224', 7, 'Trong', TO_DATE('8/16/2023', 'MM/DD/YYYY'), '424-873-7098', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('55154-1278', 8, 'Trong', TO_DATE('8/3/2023', 'MM/DD/YYYY'), '782-709-7246', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('59535-9001', 9, 'Dang Ngoi', TO_DATE('9/6/2023', 'MM/DD/YYYY'), '511-499-0821', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('62217-201', 10, 'Dang Ngoi', TO_DATE('11/23/2023', 'MM/DD/YYYY'), '848-563-6903', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('43857-0332', 11, 'Dat Truoc', TO_DATE('11/19/2023', 'MM/DD/YYYY'), '514-828-5169', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('50111-394', 12, 'Trong', TO_DATE('10/6/2023', 'MM/DD/YYYY'), '380-923-0513', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('51523-121', 13, 'Trong', TO_DATE('11/19/2023', 'MM/DD/YYYY'), '470-727-2049', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('27808-001', 14, 'Dang Ngoi', TO_DATE('7/12/2023', 'MM/DD/YYYY'), '407-126-0375', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('52125-953', 15, 'Trong', null, '265-423-2506', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('53329-094', 16, 'Dang Ngoi', TO_DATE('9/28/2023', 'MM/DD/YYYY'), '200-671-6154', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('58118-1117', 17, 'Dat Truoc', TO_DATE('9/23/2023', 'MM/DD/YYYY'), '162-125-9389', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('37808-163', 18, 'Dang Ngoi', TO_DATE('7/7/2023', 'MM/DD/YYYY'), '358-157-1079', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('51645-717', 19, 'Trong', TO_DATE('11/27/2023', 'MM/DD/YYYY'), '892-910-0208', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('41250-400', 20, 'Dang Ngoi', TO_DATE('10/15/2023', 'MM/DD/YYYY'), '753-659-5299', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('62032-101', 21, 'Trong', TO_DATE('8/12/2023', 'MM/DD/YYYY'), '514-828-5169', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('13107-006', 22, 'Dang Ngoi', TO_DATE('8/16/2023', 'MM/DD/YYYY'), '470-727-2049', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('55154-0103', 23, 'Trong', TO_DATE('9/30/2023', 'MM/DD/YYYY'), '486-505-6011', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('51270-115', 24, 'Trong', TO_DATE('9/29/2023', 'MM/DD/YYYY'), '409-243-7316', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('49288-0028', 25, 'Dang Ngoi', null, '667-389-0158', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('0615-6560', 26, 'Dang Ngoi', TO_DATE('9/23/2023', 'MM/DD/YYYY'), '470-727-2049', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('50563-141', 27, 'Dat Truoc', TO_DATE('7/1/2023', 'MM/DD/YYYY'), '848-563-6903', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('0378-1134', 28, 'Trong', TO_DATE('7/27/2023', 'MM/DD/YYYY'), '200-671-6154', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('61481-0037', 29, 'Dang Ngoi', TO_DATE('7/13/2023', 'MM/DD/YYYY'), '821-341-9982', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('49288-0179', 30, 'Trong', TO_DATE('9/11/2023', 'MM/DD/YYYY'), '231-222-5189', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('0641-6136', 31, 'Dang Ngoi', TO_DATE('6/29/2023', 'MM/DD/YYYY'), '522-231-0059', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('54473-080', 32, 'Trong', TO_DATE('11/28/2023', 'MM/DD/YYYY'), '172-417-6186', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('24236-845', 33, 'Trong', TO_DATE('7/16/2023', 'MM/DD/YYYY'), '424-873-7098', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('34645-4112', 34, 'Dang Ngoi', TO_DATE('9/30/2023', 'MM/DD/YYYY'), '753-659-5299', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('49738-444', 35, 'Trong', TO_DATE('6/29/2023', 'MM/DD/YYYY'), '667-389-0158', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('50436-6665', 36, 'Dat Truoc', TO_DATE('9/17/2023', 'MM/DD/YYYY'), '380-923-0513', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('10578-036', 37, 'Trong', TO_DATE('8/26/2023', 'MM/DD/YYYY'), '486-505-6011', '307ac585-7af5-4642-80b2-99726495a060');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('58411-221', 38, 'Trong', TO_DATE('9/6/2023', 'MM/DD/YYYY'), '470-727-2049', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into BAN (ma_ban, so_thu_tu, trang_thai, thoi_gian_dat_truoc, sdt_nguoi_dat, ma_cua_hang) values ('54868-5987', 39, 'Dang Ngoi', TO_DATE('7/15/2023', 'MM/DD/YYYY'), '473-412-2309', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

    -- insert don_hang.sql
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('43063-088', TO_DATE('2023-11-13','YYYY-MM-DD'), 'hoàn thành pha chế', false, '37e46bad-b103-4701-885c-65f677030cff', '79f44967-7044-48f1-8b24-69386cc1b50a', '631-827-0689');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('41163-917', TO_DATE('2023-11-07', 'YYYY-MM-DD'), 'đang pha chế', false, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '888-864-2094');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('68788-0633', TO_DATE('2023-11-19', 'YYYY-MM-DD'), 'hoàn thành pha chế', false, 'e609bfbb-ea73-47aa-9cc2-764aed0ece2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '312-522-0234');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63323-024', TO_DATE('2023-05-12', 'YYYY-MM-DD'), 'hủy', true, '0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '285-124-0684');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('35000-879', TO_DATE('2023-04-26', 'YYYY-MM-DD'), 'đã phục vụ', false, 'e311ff71-c613-4735-9717-3593ef932681', '79f44967-7044-48f1-8b24-69386cc1b50a', '803-190-0466');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('33261-470', TO_DATE('2023-03-11', 'YYYY-MM-DD'), 'hoàn thành pha chế', false, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '307ac585-7af5-4642-80b2-99726495a060', '219-576-9202');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('44567-711', TO_DATE('2023-03-17', 'YYYY-MM-DD'), 'hủy', true, '462f401c-7afe-44bd-a28d-2db5baad569a', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '948-879-8012');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('50845-0043', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'hoàn thành pha chế', false, '6a53092b-226d-4d6b-9792-6911b0947ed7', '79f44967-7044-48f1-8b24-69386cc1b50a', '380-923-0513');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0485-0210', TO_DATE('2023-05-27', 'YYYY-MM-DD'), 'đang pha chế', true, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '307ac585-7af5-4642-80b2-99726495a060', '200-671-6154');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('65044-9942', TO_DATE('2023-06-12', 'YYYY-MM-DD'), 'đã phục vụ', false, 'e311ff71-c613-4735-9717-3593ef932681', '79f44967-7044-48f1-8b24-69386cc1b50a', '162-125-9389');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('55312-630', TO_DATE('2023-03-24', 'YYYY-MM-DD'), 'đang pha chế', true, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '79f44967-7044-48f1-8b24-69386cc1b50a', '409-243-7316');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0591-3592', TO_DATE('2023-05-16', 'YYYY-MM-DD'), 'hoàn thành pha chế', true, '31ecdf55-d4f5-4bb9-9305-1c240a8cd4da', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '789-462-8304');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0703-3333', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 'đã phục vụ', true, '59b8324f-4989-479e-a34c-3aca1b4fcefe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '219-576-9202');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('53964-002', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 'đang pha chế', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', '79f44967-7044-48f1-8b24-69386cc1b50a', '470-727-2049');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('21695-782', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'đang pha chế', true, '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '307ac585-7af5-4642-80b2-99726495a060', '595-439-7011');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('59779-182', TO_DATE('2023-03-26', 'YYYY-MM-DD'), 'hoàn thành pha chế', false, 'fc82e0b2-1947-4a83-9031-746522aad190', '307ac585-7af5-4642-80b2-99726495a060', '789-462-8304');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63629-1839', TO_DATE('2023-04-12', 'YYYY-MM-DD'), 'đã phục vụ', false, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '307ac585-7af5-4642-80b2-99726495a060', '848-563-6903');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('55714-4521', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'đã phục vụ', true, '68120b5e-147b-4d1d-973a-6e3ec55d15fe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '473-412-2309');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0135-0519', TO_DATE('2023-02-19', 'YYYY-MM-DD'), 'hoàn thành pha chế', false, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '79f44967-7044-48f1-8b24-69386cc1b50a', '948-879-8012');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('49288-0435', TO_DATE('2023-05-12', 'YYYY-MM-DD'), 'hủy', true, '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', '307ac585-7af5-4642-80b2-99726495a060', '676-532-0672');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0187-0500', TO_DATE('2023-04-29', 'YYYY-MM-DD'), 'đã phục vụ', false, 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '307ac585-7af5-4642-80b2-99726495a060', '409-243-7316');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('64679-964', TO_DATE('2023-05-09', 'YYYY-MM-DD'), 'đang pha chế', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '911-690-2201');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0078-0345', TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'hoàn thành pha chế', true, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', '79f44967-7044-48f1-8b24-69386cc1b50a', '429-740-1485');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('67234-022', TO_DATE('2023-06-13', 'YYYY-MM-DD'), 'đã phục vụ', false, '6a53092b-226d-4d6b-9792-6911b0947ed7', '79f44967-7044-48f1-8b24-69386cc1b50a', '673-912-3161');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('50436-6112', TO_DATE('2023-03-14', 'YYYY-MM-DD'), 'hủy', false, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923', '307ac585-7af5-4642-80b2-99726495a060', '673-912-3161');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('49349-501', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'hủy', false, 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '79f44967-7044-48f1-8b24-69386cc1b50a', '511-499-0821');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('13537-004', TO_DATE('2023-05-19', 'YYYY-MM-DD'), 'đã phục vụ', false, '0c65484e-adac-4ae5-8b89-ca36c0ea23cb', '307ac585-7af5-4642-80b2-99726495a060', '172-417-6186');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('54458-896', TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'hủy', false, 'e311ff71-c613-4735-9717-3593ef932681', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '511-499-0821');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('76420-755', TO_DATE('2023-05-04', 'YYYY-MM-DD'), 'đã phục vụ', true, 'acc0e23a-e1b7-44f0-bed6-c988c848667b', '79f44967-7044-48f1-8b24-69386cc1b50a', '911-690-2201');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('62654-230', TO_DATE('2023-03-03', 'YYYY-MM-DD'), 'hủy', true, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '307ac585-7af5-4642-80b2-99726495a060', '676-532-0672');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('65841-649', TO_DATE('2023-03-21', 'YYYY-MM-DD'), 'đã phục vụ', true, '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '942-875-1552');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0378-3023', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'hủy', true, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '79f44967-7044-48f1-8b24-69386cc1b50a', '848-563-6903');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('63148-118', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'đang pha chế', false, '2f8ee2cf-c3ab-4531-a575-c0ca002b1a14', '307ac585-7af5-4642-80b2-99726495a060', '172-417-6186');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('67386-211', TO_DATE('2023-03-08', 'YYYY-MM-DD'), 'đã phục vụ', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '522-231-0059');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('61589-6505', TO_DATE('2023-02-12', 'YYYY-MM-DD'), 'hủy', true, '59b8324f-4989-479e-a34c-3aca1b4fcefe', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '511-499-0821');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('37000-331', TO_DATE('2023-05-30', 'YYYY-MM-DD'), 'đã phục vụ', false, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '307ac585-7af5-4642-80b2-99726495a060', '821-341-9982');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('37205-781', TO_DATE('2023-05-29', 'YYYY-MM-DD'), 'hủy', true, '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '307ac585-7af5-4642-80b2-99726495a060', '631-827-0689');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('51991-628', TO_DATE('2023-02-24', 'YYYY-MM-DD'), 'hủy', false, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '429-740-1485');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('42627-211', TO_DATE('2023-03-26', 'YYYY-MM-DD'), 'hủy', true, '59b8324f-4989-479e-a34c-3aca1b4fcefe', '307ac585-7af5-4642-80b2-99726495a060', '631-827-0689');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0781-5578', TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'hoàn thành pha chế', true, '240a0fab-6c8e-40ab-8980-e9921f8b0b81', '307ac585-7af5-4642-80b2-99726495a060', '948-879-8012');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0187-0792', TO_DATE('2023-05-28', 'YYYY-MM-DD'), 'hủy', true, '0ee57da6-c54b-4f05-9379-5baad1ba7faa', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '776-204-1912');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('54868-0235', TO_DATE('2023-05-25', 'YYYY-MM-DD'), 'đang pha chế', false, '59b8324f-4989-479e-a34c-3aca1b4fcefe', '307ac585-7af5-4642-80b2-99726495a060', '200-671-6154');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('0268-1322', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'hoàn thành pha chế', false, '68120b5e-147b-4d1d-973a-6e3ec55d15fe', '307ac585-7af5-4642-80b2-99726495a060', '429-740-1485');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('51514-0301', TO_DATE('2023-03-31', 'YYYY-MM-DD'), 'hủy', true, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '307ac585-7af5-4642-80b2-99726495a060', '172-417-6186');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('59779-294', TO_DATE('2023-03-30', 'YYYY-MM-DD'), 'đang pha chế', true, '6a53092b-226d-4d6b-9792-6911b0947ed7', '307ac585-7af5-4642-80b2-99726495a060', '181-133-2899');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('64220-425', TO_DATE('2023-04-03', 'YYYY-MM-DD'), 'đã phục vụ', true, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5', '79f44967-7044-48f1-8b24-69386cc1b50a', '252-780-4243');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('42211-102', TO_DATE('2023-03-04', 'YYYY-MM-DD'), 'hủy', false, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879', '307ac585-7af5-4642-80b2-99726495a060', '162-125-9389');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('50802-001', TO_DATE('2023-05-29', 'YYYY-MM-DD'), 'đang pha chế', true, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7', '473-412-2309');
insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) values ('21695-497', TO_DATE('2023-03-24', 'YYYY-MM-DD'), 'đang pha chế', true, 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '79f44967-7044-48f1-8b24-69386cc1b50a', '213-241-6472');


    -- insert ca_lam_viec
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('54868-4349', 4000, TO_TIMESTAMP('2023/12/1 06:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 9:00','YYYY/MM/DD HH24:MI'), 7, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('51367-005', 8000, TO_TIMESTAMP('2023/12/1 6:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 9:00','YYYY/MM/DD HH24:MI'), 8, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('42507-337', 2000, TO_TIMESTAMP('2023/12/1 6:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 9:00','YYYY/MM/DD HH24:MI'), 8, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('50436-2000', 6000, TO_TIMESTAMP('2023/12/1 9:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 12:00','YYYY/MM/DD HH24:MI'), 9, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('36987-1043', 8000, TO_TIMESTAMP('2023/12/1 9:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 12:00','YYYY/MM/DD HH24:MI'), 5, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('50387-300', 2000, TO_TIMESTAMP('2023/12/1 9:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 12:00','YYYY/MM/DD HH24:MI'), 6, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('15751-2248', 8000, TO_TIMESTAMP('2023/12/1 12:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 15:00','YYYY/MM/DD HH24:MI'), 6, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('41520-130', 7000, TO_TIMESTAMP('2023/12/1 12:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 15:00','YYYY/MM/DD HH24:MI'), 8, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('17271-501', 7000, TO_TIMESTAMP('2023/12/1 12:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 15:00','YYYY/MM/DD HH24:MI'), 10, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('49349-043', 8000, TO_TIMESTAMP('2023/12/1 15:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 19:00','YYYY/MM/DD HH24:MI'), 5, '307ac585-7af5-4642-80b2-99726495a060');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('68788-0713', 1000, TO_TIMESTAMP('2023/12/1 15:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 19:00','YYYY/MM/DD HH24:MI'), 8, '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into CA_LAM_VIEC (ma_ca_lam_viec, he_so_luong_tang_them, thoi_gian_bat_dau, thoi_gian_ket_thuc, sl_nv_yeu_cau, ma_cua_hang) values ('54868-0451', 4000, TO_TIMESTAMP('2023/12/1 15:00','YYYY/MM/DD HH24:MI'), TO_TIMESTAMP('2023/12/1 19:00','YYYY/MM/DD HH24:MI'), 5, 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

    -- insert BAN_THOI_GIAN

insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.7, '053381de-24dc-4611-aed1-af75bb2544da');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.4, '0c65484e-adac-4ae5-8b89-ca36c0ea23cb');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.5, '0cdeaa63-3b34-4a34-bf34-5d9b77b7f9e2');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.4, '0ee57da6-c54b-4f05-9379-5baad1ba7faa');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.8, '240a0fab-6c8e-40ab-8980-e9921f8b0b81');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.5, '2f8ee2cf-c3ab-4531-a575-c0ca002b1a14');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.2, '31ecdf55-d4f5-4bb9-9305-1c240a8cd4da');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.3, '37e46bad-b103-4701-885c-65f677030cff');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.4, '44181f87-9211-43ad-953d-500d67333707');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.9, '462f401c-7afe-44bd-a28d-2db5baad569a');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.5, '4c8d18e0-267d-43b9-9775-375b5f1d2fe5');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.2, '4cbc79cd-e38e-47d8-9e9f-1fd1cf776923');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.9, '59b8324f-4989-479e-a34c-3aca1b4fcefe');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.5, '68120b5e-147b-4d1d-973a-6e3ec55d15fe');
insert into BAN_THOI_GIAN (he_so_luong_theo_gio, ma_nhan_vien) values (1.3, '6a53092b-226d-4d6b-9792-6911b0947ed7');

    -- insert TOAN_THOI_GIAN
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3472314, '8583f8fb-4076-4028-81ef-b7b8b85188d0');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3925621, '9c622593-de61-472d-bd4a-f9207634b012');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3341965, 'a374a2a7-d798-4fe6-81eb-dfaabd876879');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3413548, 'a39f4ae9-86fc-44f9-afb1-0d1ae7c3a7ce');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3949029, 'a8fe1d21-4609-402a-8197-e59fc7062325');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3717122, 'acc0e23a-e1b7-44f0-bed6-c988c848667b');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3889835, 'b4efff62-3a23-427d-bbae-6d0818ba5f2d');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3453940, 'b5dafcbc-ab61-4489-8c18-ec9047539c65');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3420570, 'c700ff6e-a58e-48c1-a530-b3b4b3385688');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3372480, 'e311ff71-c613-4735-9717-3593ef932681');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3567533, 'e609bfbb-ea73-47aa-9cc2-764aed0ece2d');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3668342, 'e62309e6-5d39-4fb2-bbf0-e9b4b05bb879');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3619601, 'edd37519-af0a-489c-922e-c3830322a4b3');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3074740, 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e');
insert into TOAN_THOI_GIAN (luong_thang, ma_nhan_vien) values (3004371, 'fc82e0b2-1947-4a83-9031-746522aad190');

    -- insert nhan_vien_lam_viec_trong_ca_lam_viec
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 6:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 09:00:00','YYYY/MM/DD HH24:MI:SS'), '9c622593-de61-472d-bd4a-f9207634b012', '54868-4349');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 09:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'a374a2a7-d798-4fe6-81eb-dfaabd876879', '50436-2000');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 12:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 15:00:00','YYYY/MM/DD HH24:MI:SS'), 'c700ff6e-a58e-48c1-a530-b3b4b3385688', '15751-2248');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 15:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 19:00:00','YYYY/MM/DD HH24:MI:SS'), 'a39f4ae9-86fc-44f9-afb1-0d1ae7c3a7ce', '49349-043');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 06:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 09:00:00','YYYY/MM/DD HH24:MI:SS'), '462f401c-7afe-44bd-a28d-2db5baad569a', '54868-4349');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 09:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 12:00:00','YYYY/MM/DD HH24:MI:SS'), '6a53092b-226d-4d6b-9792-6911b0947ed7', '50436-2000');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 12:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 15:00:00','YYYY/MM/DD HH24:MI:SS'), '68120b5e-147b-4d1d-973a-6e3ec55d15fe', '15751-2248');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 15:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 19:00:00','YYYY/MM/DD HH24:MI:SS'), 'a8fe1d21-4609-402a-8197-e59fc7062325', '49349-043');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 06:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 09:00:00','YYYY/MM/DD HH24:MI:SS'), 'fb8a71ad-8df7-4158-a8d7-efe5e7a37a7e', '54868-4349');
insert into nhan_vien_lam_viec_trong_ca_lam_viec (Thoi_gian_den, Thoi_gian_di, Ma_nhan_vien, Ma_ca_lam_viec) values (TO_TIMESTAMP('2023/12/10 09:00:00','YYYY/MM/DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/10 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'b4efff62-3a23-427d-bbae-6d0818ba5f2d', '50436-2000');

    -- insert KHUYEN_MAI_TINH_THEO_SO

insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (39000, '37808-552');
insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (32000, '41163-742');
insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (53000, '42388-012');
insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (46000, '42507-692');
insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (30000, '49288-0004');
insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (50000, '37808-552');
insert into KHUYEN_MAI_TINH_THEO_SO (gia_giam, ma_khuyen_mai) values (10000, '68786-220');

    -- insert khuyen_mai_tinh_theo_phan_tram
insert into KHUYEN_MAI_TINH_THEO_PHAN_TRAM (phan_tram_giam, muc_giam_toi_da, ma_khuyen_mai) values (50, 40000, '42388-012');
insert into KHUYEN_MAI_TINH_THEO_PHAN_TRAM (phan_tram_giam, muc_giam_toi_da, ma_khuyen_mai) values (40, 100000, '42507-692');
insert into KHUYEN_MAI_TINH_THEO_PHAN_TRAM (phan_tram_giam, muc_giam_toi_da, ma_khuyen_mai) values (30, 40000, '64117-178');

insert into KHUYEN_MAI_TINH_THEO_PHAN_TRAM (phan_tram_giam, muc_giam_toi_da, ma_khuyen_mai) values (20, 100000, '68382-228');
insert into KHUYEN_MAI_TINH_THEO_PHAN_TRAM (phan_tram_giam, muc_giam_toi_da, ma_khuyen_mai) values (10, 100000, '68786-220');

    -- insert cua_hang_co_mon
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('0527-1351', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('55319-213', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('68462-296', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('51346-081', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('21695-197', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('49288-0258', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('10477-1261', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('54569-1024', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('47335-675', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('52686-276', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('54868-6223', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('98132-700', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('21130-044', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('49967-790', '79f44967-7044-48f1-8b24-69386cc1b50a');

insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('0527-1351', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('55319-213', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('63824-861', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('58118-1392', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('68462-296', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('51346-081', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('21695-197', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('49288-0258', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('10477-1261', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('54569-1024', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('47335-675', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('52686-276', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('54868-6223', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('98132-700', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('21130-044', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('49967-790', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('69249-000', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('37808-773', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('98132-750', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('10237-820', '307ac585-7af5-4642-80b2-99726495a060');

insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('0527-1351', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('55319-213', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('63824-861', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('58118-1392', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('68462-296', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('51346-081', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_co_mon (Ma_mon, Ma_cua_hang) values ('21695-197', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');

    -- insert cua_hang_chua_nguyen_lieu
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('10337-163', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0615-7832', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('59779-084', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('33261-484', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0781-3428', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('51147-5010', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('11523-0435', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0135-0140', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('63402-206', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('60505-3409', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('57297-208', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52125-215', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0430-0720', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52125-377', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('68258-3014', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0904-6178', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52343-020', '79f44967-7044-48f1-8b24-69386cc1b50a');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('63459-512', '79f44967-7044-48f1-8b24-69386cc1b50a');

insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('33342-088', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0430-0720', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0904-6178', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('63459-512', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0135-0140', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('60429-526', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('10345-034', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0904-6324', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('10337-163', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('59779-084', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0781-3428', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('51531-6743', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('37808-425', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('11523-0435', '307ac585-7af5-4642-80b2-99726495a060');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52125-215', '307ac585-7af5-4642-80b2-99726495a060');

insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('37808-425', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('51345-067', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52125-691', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('68258-3014', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0781-3428', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('60429-526', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('10337-163', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52125-377', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('11523-0435', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0904-6324', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('57297-208', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('54868-4277', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('51147-5010', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('52667-003', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('63402-206', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
insert into cua_hang_chua_nguyen_lieu (Ma_nguyen_lieu, Ma_cua_hang) values ('0135-0140', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');


    -- insert hoa_don_nhap_kho

-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('34666-171', TO_DATE('10/11/2023', 'MM/DD/YYYY'), 'Leffler and Sons', '79f44967-7044-48f1-8b24-69386cc1b50a');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('41250-272', TO_DATE('9/16/2023', 'MM/DD/YYYY'), 'Altenwerth LLC', '79f44967-7044-48f1-8b24-69386cc1b50a');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('55154-0358', TO_DATE('5/30/2023', 'MM/DD/YYYY'), 'Conn-Hand', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('15127-151', TO_DATE('8/17/2023', 'MM/DD/YYYY'), 'Monahan Inc', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('65734-000', TO_DATE('8/12/2023', 'MM/DD/YYYY'), 'Hansen-Schulist', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('55513-144', TO_DATE('2/24/2023', 'MM/DD/YYYY'), 'Cummings, Roob and O''Connell', '79f44967-7044-48f1-8b24-69386cc1b50a');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0597-0075', TO_DATE('10/31/2023', 'MM/DD/YYYY'), 'Kozey, Johns and Gibson', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0025-1891', TO_DATE('1/19/2023', 'MM/DD/YYYY'), 'Runolfsson and Sons', '79f44967-7044-48f1-8b24-69386cc1b50a');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('52124-0113', TO_DATE('9/4/2023', 'MM/DD/YYYY'), 'Cremin Group', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0615-1571', TO_DATE('10/8/2023', 'MM/DD/YYYY'), 'Sanford and Sons', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('49349-953', TO_DATE('4/2/2023', 'MM/DD/YYYY'), 'Heidenreich-Schultz', '79f44967-7044-48f1-8b24-69386cc1b50a');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('64175-991', TO_DATE('7/10/2023', 'MM/DD/YYYY'), 'Barton, Reichert and Roob', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('55910-371', TO_DATE('12/8/2022', 'MM/DD/YYYY'), 'Dare, Stroman and Fisher', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('52584-047', TO_DATE('5/8/2023', 'MM/DD/YYYY'), 'Cremin-Wyman', '79f44967-7044-48f1-8b24-69386cc1b50a');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0185-4351', TO_DATE('10/26/2023', 'MM/DD/YYYY'), 'Grant, Prosacco and Blanda', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('67544-318', TO_DATE('10/6/2023', 'MM/DD/YYYY'), 'Quigley Inc', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('62011-0065', TO_DATE('12/3/2022', 'MM/DD/YYYY'), 'McGlynn-Hettinger', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('24724-030', TO_DATE('9/18/2023', 'MM/DD/YYYY'), 'Rohan, Stokes and Ondricka', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('64980-158', TO_DATE('4/11/2023', 'MM/DD/YYYY'), 'Bogan, Sporer and Treutel', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('49527-801', TO_DATE('6/30/2023', 'MM/DD/YYYY'), 'Rogahn, Bartoletti and Harvey', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('61924-266', TO_DATE('7/24/2023', 'MM/DD/YYYY'), 'Lebsack Inc', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('36987-3431', TO_DATE('5/25/2023', 'MM/DD/YYYY'), 'Grady-Simonis', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('50436-3101', TO_DATE('4/18/2023', 'MM/DD/YYYY'), 'Sporer-Wuckert', '307ac585-7af5-4642-80b2-99726495a060');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('0409-7931', TO_DATE('6/13/2023', 'MM/DD/YYYY'), 'Kuvalis-Schumm', 'd40c35a7-f8fb-4eee-bb00-8f67fc6d4fb7');
-- insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) values ('68745-1087', TO_DATE('6/23/2023', 'MM/DD/YYYY'), 'Rutherford, Hintz and Lemke', '79f44967-7044-48f1-8b24-69386cc1b50a');

COMMIT;