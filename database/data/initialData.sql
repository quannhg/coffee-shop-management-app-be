-- run the following command when excute query failed, this will rollback transaction (excute only this command, not the whole file)
-- ROLLBACK; 

BEGIN;

    -- initial data in here
    insert into CUA_HANG
        (Ma_cua_hang, Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua)
    values
        ('a0e5c178-94f9-4f0d-8967-d2dad366f16d', 'MIRAPEX', '48640 Bonner Road', '480-862-4913', 'kvandenbroek0@t-online.de', '6:00', '19:00');
    insert into CUA_HANG
        (Ma_cua_hang, Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua)
    values
        ('8daa9938-3cc3-4865-b78b-8f8c011886a7', 'Midazolam Hydrochloride', '1275 Cascade Crossing', '311-583-0408', 'jgornall1@amazon.de', '6:00', '19:00');
    insert into CUA_HANG
        (Ma_cua_hang, Ten_cua_hang, Dia_chi, Sdt, Dia_chi_mail, Gio_mo_cua, Gio_dong_cua)
    values
        ('fa468d66-44f5-4447-8c4e-60e29cf2f623', 'Alcohol Hand Problend', '1137 Mendota Crossing', '612-603-1870', 'pgarvagh2@netlog.com', '6:00', '19:00');

    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('9ea7776a-42e9-43e1-a58d-070aed9781f2', 'Les Filipson', '2003-09-28', 'Male', '5299 Lindbergh Road', '228-834-6627', '945701745679824', 'College Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('1d45988d-349c-4511-82be-dfb32d8dacd3', 'Miller McKeowon', '1995-11-16', 'Male', '771 Thierer Road', '595-502-9089', '360194213020953', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('2152a995-b382-46eb-95ac-c49430837a65', 'Warren Choffin', '1994-06-04', 'Male', '9603 Continental Center', '842-586-0460', '255050180193528', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('27e5a656-5ae6-4b23-ab1b-3f139da51716', 'Sam Brolly', '1984-04-18', 'Male', '32 Coleman Drive', '636-543-0638', '077252191369963', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('2f417461-6f0f-4a59-8851-cdc60bf127d1', 'Lief Tullett', '1996-12-02', 'Male', '836 Larry Drive', '781-380-5578', '426106343791888', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('36f4a1bc-ea93-431c-a2ba-3ee556855679', 'Magda Lamp', '1992-03-24', 'Female', '44 Pankratz Terrace', '680-243-3482', '831306519336103', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('f32d5e95-6806-4a2e-9110-9ed7a05b8e21', 'Nert Pedracci', '1985-07-01', 'Female', '48432 Sunnyside Circle', '471-937-4923', '396111141134972', 'Undergraduate Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('4cc7751a-846b-467a-8003-9d96f2ddf1b7', 'Noel Perez', '1992-03-19', 'Male', '65996 Sutteridge Circle', '128-761-9246', '813999185265703', 'Undergraduate Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('927a210f-5c00-4ee3-9101-7605cd306204', 'Bayard Kilvington', '1982-07-23', 'Male', '3 Schmedeman Crossing', '106-498-8390', '663706032904942', 'College Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('7c474867-49c6-4e66-bae1-43c4bb2841b6', 'Jeniece Exley', '2003-05-04', 'Female', '3214 Trailsway Park', '687-471-3987', '653430904136063', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('205b9287-f13a-4ea8-8c0f-d6a5c0657366', 'Adriane Hightown', '1986-06-09', 'Female', '779 Golden Leaf Hill', '619-567-5457', '508257257907406', 'College Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('8330aaa6-7c70-40a7-a418-cce6365c4dff', 'Kendra Lathwell', '1995-04-28', 'Female', '726 Gulseth Trail', '427-634-6597', '470652643471291', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('5214120d-5333-43af-88c7-b00e503a0c51', 'Carolyne Mallock', '1994-10-05', 'Female', '8563 John Wall Road', '922-246-4493', '749284881242589', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('67e62008-0734-444c-acb0-8fd110c5912c', 'Oralee Unwin', '1981-01-09', 'Female', '45 Lien Street', '168-753-9037', '660172019891924', 'Undergraduate Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('08f6dc92-4c74-46f5-af1c-c713a6c9f868', 'Thacher Balharrie', '1999-01-27', 'Male', '92853 Russell Plaza', '164-166-0896', '610114577756617', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('5328c38f-3baf-40a1-a46b-8cb17f584b06', 'Skell Overy', '1988-07-24', 'Male', '99425 Spohn Crossing', '312-587-7496', '021367523522259', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('945759fe-371c-4820-91e1-4b369cc3de7b', 'Dave Clewett', '1998-03-28', 'Male', '3857 Reinke Drive', '593-864-4198', '591051169904707', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('a1157261-03b3-4f89-aa9a-185fceb9042c', 'Horst Jeggo', '1986-07-25', 'Male', '53016 Warbler Court', '865-120-6314', '361409002963512', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('e3fa3479-0db6-4c08-9316-d5820c6735c4', 'Aldus Goldup', '1985-10-05', 'Male', '87498 Larry Terrace', '574-358-5871', '385516387303751', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('949f201b-fd5e-442b-9c87-85f26a64439a', 'Opalina Tassel', '1984-07-21', 'Female', '57146 Twin Pines Place', '376-328-4052', '001652579596388', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('bba84b8f-d9e8-4113-8642-0f69a21ea0a7', 'Aveline Collier', '2002-02-11', 'Female', '23 Mockingbird Hill', '669-800-7200', '969017813525105', 'Undergraduate Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('d873b924-f847-4018-b896-512f45c7cd7d', 'Morgan Blackaby', '1981-01-13', 'Female', '7315 Almo Way', '246-778-7452', '798021222824202', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('4f7c786b-f24c-4421-a5f6-b62a977a396b', 'Rikki Vivien', '2002-04-20', 'Female', '2 Roth Point', '748-183-9656', '771411565554032', 'Undergraduate Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('763863f9-0d11-4a93-bf9a-60269f915c06', 'Wernher Gonnard', '1994-08-30', 'Male', '07430 Sullivan Place', '964-620-3255', '700529400162237', 'Undergraduate Degree');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('c7bc83e0-7151-4e41-aff9-d7d46304fc5a', 'Kingston Sidebotham', '1982-03-21', 'Male', '552 Judy Alley', '142-504-6734', '213521641368493', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('181db9d5-a216-4466-8c6c-381570bac4a7', 'Marve Gynn', '1983-02-22', 'Male', '4 Nevada Place', '844-812-8770', '876925922241509', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('439007e3-1646-4587-a66a-377c904d9dc3', 'Wilden Cran', '1987-08-10', 'Male', '04 Kim Circle', '897-739-0647', '415208187605844', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('3f42c481-6447-4776-9932-7d544c66dc43', 'Octavius Giacovetti', '1983-03-29', 'Male', '7846 Morningstar Alley', '381-946-0413', '093962555854697', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('27cba14d-8b36-4137-b5f3-40406faee075', 'Mariejeanne Chitson', '2001-09-16', 'Female', '80 Merry Court', '626-297-9166', '599921792725037', 'High School Diploma');
    insert into NHAN_VIEN
        (Ma_nhan_vien, Ho_va_ten, Ngay_sinh, Gioi_tinh, Dia_chi, Sdt, So_tk_ngan_hang, Trinh_do_hoc_van)
    values
        ('6cbc76eb-e4a0-49ab-89c5-095bce8b72ce', 'Keith Hyams', '1991-02-21', 'Male', '98 Northport Terrace', '292-510-5725', '259116689020210', 'High School Diploma');

    --end
    COMMIT;