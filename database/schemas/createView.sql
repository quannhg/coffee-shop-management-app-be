--create view in here

CREATE VIEW v_So_ban_TRONG AS
SELECT  b.Ma_ban, b.So_thu_tu
FROM BAN b JOIN CUA_HANG ch ON b.Ma_cua_hang = ch.Ma_cua_hang
WHERE b.Trang_thai = 'Trong'; 

CREATE VIEW v_Tong_tien_MON AS
SELECT dh.Ma_don_hang, m.Ten_mon, dhm.So_luong * m.Gia_tien AS Tong_tien
FROM DON_HANG_GOM_MON dhm JOIN MON m ON dhm.Ma_mon = m.Ma_mon
JOIN DON_HANG dh ON dhm.Ma_don_hang = dh.Ma_don_hang;
