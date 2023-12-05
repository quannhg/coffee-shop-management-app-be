-- thủ tục trả về danh sách số lượng từng độ tuổi tại cửa hàng chỉ định sắp xếp theo độ tuổi tăng dần

--CREATE OR REPLACE PROCEDURE GetAgeGroupCountsByStore(maCuaHang uuid,INOUT result refcursor)
--LANGUAGE 'plpgsql'
--AS $BODY$         
--BEGIN
--open result for 
--   SELECT COUNT(*) AS so_luong_nhan_vien, FLOOR(DATE_PART('year', CURRENT_DATE) - DATE_PART('year', ngay_sinh)) AS tuoi
--    FROM nhan_vien 
--    INNER JOIN nhan_vien_lam_viec_tai_cua_hang ON nhan_vien.ma_nhan_vien = nhan_vien_lam_viec_tai_cua_hang.ma_nhan_vien
--    WHERE ma_cua_hang = maCuaHang
--    GROUP BY tuoi
--    ORDER BY tuoi ASC;
--END;
--$BODY$;

--BEGIN;
--CALL GetAgeGroupCountsByStore( '',  'test');
--fetch all in "test";
--COMMIT;
  
CREATE OR REPLACE FUNCTION danh_sach_so_luong_theo_tuoi(Ma_cua_hang UUID)
RETURNS TABLE (
    Do_tuoi INT,
    So_luong INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        EXTRACT(YEAR FROM AGE(NOW(), Ngay_sinh)) AS Do_tuoi,
        COUNT(*) AS So_luong
    FROM
        NHAN_VIEN
    WHERE
        EXISTS (
            SELECT 1
            FROM
                NHAN_VIEN_LAM_VIEC_TAI_CUA_HANG nvch
            WHERE
                nvch.Ma_nhan_vien = NHAN_VIEN.Ma_nhan_vien
                AND nvch.Ma_cua_hang = Ma_cua_hang
        )
    GROUP BY
        Do_tuoi
    ORDER BY
        Do_tuoi;
END;
$$ LANGUAGE plpgsql;

--ultility: SELECT * FROM danh_sach_so_luong_theo_tuoi('Mã_cửa_hàng_cần_kiểm_tra');
