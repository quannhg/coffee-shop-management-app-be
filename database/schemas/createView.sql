--create view in here

CREATE VIEW v_cuahang_chua_soluong_nguyenlieu AS
SELECT 
    COALESCE(sl_in.ma_cua_hang, sl_out.ma_cua_hang, sl_haohut.ma_cua_hang) as ma_cua_hang,
    COALESCE(sl_in.ma_nguyen_lieu, sl_out.ma_nguyen_lieu, sl_haohut.ma_nguyen_lieu) as ma_nguyen_lieu,
    (COALESCE(sl_in.so_luong, 0) - COALESCE(sl_out.so_luong,0) - COALESCE(sl_haohut.so_luong, 0)) as so_luong
FROM
(
    select 
        hd_nl.ma_nguyen_lieu,
        hd.ma_cua_hang,
        sum(hd_nl.so_luong) as so_luong
    from
        hoa_don_nhap_kho hd
    JOIN
        hoa_don_nhap_kho_co_nguyen_lieu hd_nl on hd.ma_hoa_don = hd_nl.ma_hoa_don
    GROUP BY
        ma_cua_hang,
        ma_nguyen_lieu
) sl_in
FULL JOIN
(
    select 
        dh.ma_cua_hang,
        m.ma_nguyen_lieu,
        sum(dhm.so_luong * m.so_luong) as so_luong
    from
        don_hang_gom_mon dhm
    join 
        mon_can_nguyen_lieu m on dhm.ma_mon = m.ma_mon 
    join 
        don_hang dh on dh.ma_don_hang = dhm.ma_don_hang
    GROUP BY
        dh.ma_cua_hang,
        m.ma_nguyen_lieu
) sl_out ON sl_in.ma_cua_hang = sl_out.ma_cua_hang AND sl_in.ma_nguyen_lieu = sl_out.ma_nguyen_lieu
FULL JOIN
(
    select 
        sum(so_luong_hao_hut) as so_luong,
        ma_cua_hang,
        ma_nguyen_lieu
    from 
        so_luong_hao_hut
group by 
        ma_cua_hang,
        ma_nguyen_lieu
) sl_haohut ON COALESCE(sl_in.ma_cua_hang, sl_out.ma_cua_hang) = sl_haohut.ma_cua_hang AND COALESCE(sl_in.ma_nguyen_lieu, sl_out.ma_nguyen_lieu) = sl_haohut.ma_nguyen_lieu;


CREATE VIEW v_So_ban_TRONG AS
SELECT  b.Ma_ban, b.So_thu_tu
FROM BAN b JOIN CUA_HANG ch ON b.Ma_cua_hang = ch.Ma_cua_hang
WHERE b.Trang_thai = 'Trong'; 

CREATE VIEW v_Tong_tien_MON AS
SELECT dh.Ma_don_hang, m.Ten_mon, dhm.So_luong * m.Gia_tien AS Tong_tien
FROM DON_HANG_GOM_MON dhm JOIN MON m ON dhm.Ma_mon = m.Ma_mon
JOIN DON_HANG dh ON dhm.Ma_don_hang = dh.Ma_don_hang;
