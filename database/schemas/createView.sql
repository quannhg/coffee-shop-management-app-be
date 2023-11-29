--create view in here
CREATE VIEW v_SL_nguyen_lieu_cua_hang AS
SELECT
    ch.Ma_cua_hang,
    ch.Ten_cua_hang,
    nl.Ma_nguyen_lieu,
    nl.Ten_nguyen_lieu,
    nl.Don_vi,
    COUNT(chnl.Ma_nguyen_lieu) AS So_luong
FROM
    CUA_HANG ch
JOIN
    CUA_HANG_CHUA_NGUYEN_LIEU chnl ON ch.Ma_cua_hang = chnl.Ma_cua_hang
JOIN
    NGUYEN_LIEU nl ON chnl.Ma_nguyen_lieu = nl.Ma_nguyen_lieu
GROUP BY
    ch.Ma_cua_hang,
    ch.Ten_cua_hang,
    nl.Ma_nguyen_lieu,
    nl.Ten_nguyen_lieu,
    nl.Don_vi;


CREATE VIEW v_So_ban_TRONG AS
SELECT  b.Ma_ban, b.So_thu_tu
FROM BAN b JOIN CUA_HANG ch ON b.Ma_cua_hang = ch.Ma_cua_hang
WHERE b.Trang_thai = "Trong"; 

CREATE VIEW v_Tong_tien_MON AS
SELECT dh.Ma_don_hang, m.Ten_mon, dhm.So_luong * m.Gia_tien AS Tong_tien
FROM DON_HANG_GOM_MON dhm JOIN MON m ON dhm.Ma_mon = m.Ma_mon
JOIN DON_HANG dh ON dhm.Ma_don_hang = dh.Ma_don_hang;



