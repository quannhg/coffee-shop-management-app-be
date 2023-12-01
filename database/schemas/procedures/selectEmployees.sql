-- thủ tục select nhân viên của cửa hàng chỉ định sắp xếp theo tên

CREATE OR REPLACE PROCEDURE selectEmployeeByStore(maCuaHang uuid,INOUT result refcursor)
LANGUAGE 'plpgsql'
AS $BODY$         
BEGIN
open result for 
    SELECT  nv.* FROM nhan_vien AS nv
    JOIN nhan_vien_lam_viec_tai_cua_hang AS nvlvtch ON nv.ma_nhan_vien = nvlvtch.ma_nhan_vien
    JOIN cua_hang AS ch ON nvlvtch.ma_cua_hang = ch.ma_cua_hang
    WHERE ch.ma_cua_hang = maCuaHang
    ORDER BY nv.ho_va_ten;
END;
$BODY$;

BEGIN;
CALL selectEmployeeByStore( '',  'test');
fetch all in "test";
COMMIT;

