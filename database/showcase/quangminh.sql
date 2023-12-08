SHOW demo
1.1 Procedure them_nhan_vien

Kiem tra sdt
call them_nhan_vien('Minh Dep Trai',TO_DATE('26/11/2003','DD/MM/YYYY'),'Nam','2342 MSASD,QQW','1234-aba-120','12312312312','High School Diploma','test2.1.1_1','1231asddae123') --loi
call them_nhan_vien('Minh Dep Trai',TO_DATE('26/11/2003','DD/MM/YYYY'),'Nam','2342 MSASD,QQW','123-567-8904','12312312312','High School Diploma','test2.1.1_1','1231asddae123')
select * from nhan_vien where Ho_va_ten = 'Minh Dep Trai'

Kiem tra gioi tinh va do tuoi
call them_nhan_vien('Minh Dep Gai',TO_DATE('26/11/2010','DD/MM/YYYY'),'Meow','2342 MSASD,QQW','123-567-8905','123123123112','High School Diploma','test2.1.1_2','1231asddae123') --loi
call them_nhan_vien('Minh Dep Gai',TO_DATE('26/11/2015','DD/MM/YYYY'),'Nu','2342 MSASD,QQW','123-567-8905','123123123112','High School Diploma','test2.1.1_2','1231asddae123')

select * from nhan_vien where Ho_va_ten = 'Minh Dep Gai'

1.2 Procedure sua_nhan_vien

select * from nhan_vien
call sua_nhan_vien_qua_TK_va_MK(p_Ten_tai_khoan => 'lverne1', 
                                p_Mat_khau => '$2a$04$4Z4DzNRAgKoEMdjAUAFk5.YmF.aitJiLDyXx98Sob8.Dk/Srkpgqy', 
                                p_Ho_va_ten => 'Pham Vo Quang Minh',
                                p_Gioi_tinh => 'Nu',
                                p_Ngay_sinh => '2003-11-22');

call sua_nhan_vien_qua_ma_nhan_vien(
                                p_Ma_nhan_vien => '31ecdf55-d4f5-4bb9-9305-1c240a8cd4da',
                                p_Ho_va_ten => 'Pham Vo Quang Minh',
                                p_Ngay_sinh => '2015-11-22'
)
select * from nhan_vien where ten_tai_khoan = 'lverne1'

call thay_doi_mat_khau_nhan_vien('lverne1','$2a$04$4Z4DzNRAgKoEMdjAUAFk5.YmF.aitJiLDyXx98Sob8.Dk/Srkpgqy', '$2a$04$4Z4DzNRAgKoEMdjAUAFk5.YmF.aitJiLDyXx98Sob8.Dk/Srkpgqy')

1.3 Procedure xoa 
select * from nhan_vien where ten_tai_khoan = 'test2.1.1_1'

call xoa_nhan_vien('f51dde2f-1318-44ca-a924-8cee89d50de5')

2.1 Trigger 
2.1.1 Trigger giảm attribute so_luong trong cua_hang_chua_nguyen_lieu khi insert đơn hàng gồm món
CREATE OR REPLACE FUNCTION decrease_ingredient_quantity() RETURNS TRIGGER AS $$
DECLARE
    r mon_can_nguyen_lieu%ROWTYPE;
BEGIN
    FOR r IN SELECT * FROM mon_can_nguyen_lieu WHERE ma_mon = NEW.ma_mon
    LOOP
        UPDATE cua_hang_chua_nguyen_lieu
        SET so_luong = so_luong - r.so_luong * NEW.so_luong
        WHERE ma_cua_hang = 
            (SELECT ma_cua_hang 
             FROM don_hang 
             WHERE don_hang.ma_don_hang = NEW.ma_don_hang)
        AND ma_nguyen_lieu = r.ma_nguyen_lieu;
    END LOOP;
    RETURN NEW;
END;
CREATE TRIGGER decrease_ingredient_quantity_trigger
AFTER INSERT ON don_hang_gom_mon
FOR EACH ROW EXECUTE FUNCTION decrease_ingredient_quantity();

insert into DON_HANG (Ma_don_hang, Thoi_gian_tao_don_hang, Tinh_trang, Dung_tai_quan_khong, Ma_nhan_vien, Ma_cua_hang, Sdt_khach_hang) 
values ('50436-6113', TO_DATE('2023-12-8','YYYY-MM-DD'), 'hoàn thành pha chế', false, '37e46bad-b103-4701-885c-65f677030cff', '307ac585-7af5-4642-80b2-99726495a060', '631-827-0689');

insert into don_hang_gom_mon (So_luong, Ma_don_hang, Ma_mon) 
values (100, '50436-6113', '47335-675');

select * from mon_can_nguyen_lieu 
where ma_mon = '47335-675' -- 2 51531-6743 va 2 0904-6324

select ma_cua_hang from don_hang 
where ma_don_hang = '50436-6112' -- 307ac585-7af5-4642-80b2-99726495a060

select * from cua_hang_chua_nguyen_lieu 
where ma_cua_hang = '307ac585-7af5-4642-80b2-99726495a060' 
    and (ma_nguyen_lieu = '51531-6743' or ma_nguyen_lieu = '0904-6324')

2.1.2
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
CREATE TRIGGER increase_ingredient_quantity_trigger
AFTER INSERT ON hoa_don_nhap_kho_co_nguyen_lieu
FOR EACH ROW EXECUTE FUNCTION increase_ingredient_quantity();
$$ LANGUAGE plpgsql;

DEMO
insert into HOA_DON_NHAP_KHO (Ma_hoa_don, Thoi_gian_nhap_kho, Nha_cung_cap, Ma_cua_hang) 
values ('68745-1088', TO_DATE('6/23/2023', 'MM/DD/YYYY'), 'Rutherford, Hintz and Lemke', '79f44967-7044-48f1-8b24-69386cc1b50a');
select ma_cua_hang 
from hoa_don_nhap_kho 
where ma_hoa_don = '68745-1088' -- 79f44967-7044-48f1-8b24-69386cc1b50a

select * from cua_hang_chua_nguyen_lieu 
where ma_cua_hang = '79f44967-7044-48f1-8b24-69386cc1b50a' 
and ma_nguyen_lieu = '52343-020'

INSERT INTO HOA_DON_NHAP_KHO_CO_NGUYEN_LIEU (So_luong, Thanh_tien, Ma_hoa_don, Ma_nguyen_lieu) 
VALUES (100, 1112070, '68745-1088', '52343-020');

select * 
from cua_hang_chua_nguyen_lieu 
where ma_cua_hang = '79f44967-7044-48f1-8b24-69386cc1b50a' and ma_nguyen_lieu = '52343-020'


2.1.3
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
CREATE TRIGGER update_ingredient_quantity_trigger
AFTER UPDATE ON hoa_don_nhap_kho_co_nguyen_lieu
FOR EACH ROW EXECUTE FUNCTION update_ingredient_quantity();

UPDATE HOA_DON_NHAP_KHO_CO_NGUYEN_LIEU
SET So_luong = 50
WHERE Ma_hoa_don = '68745-1088' AND Ma_nguyen_lieu = '52343-020';

select * 
from cua_hang_chua_nguyen_lieu 
where ma_cua_hang = '79f44967-7044-48f1-8b24-69386cc1b50a' and ma_nguyen_lieu = '52343-020'

