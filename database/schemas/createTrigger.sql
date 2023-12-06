--create trigger in here

--cua hang can du so luong nguyen lieu de them mon vao don hang
CREATE TRIGGER trigger_check_mon_can_nguyen_lieu
BEFORE INSERT OR UPDATE
ON MON_CAN_NGUYEN_LIEU
FOR EACH ROW
EXECUTE FUNCTION check_mon_can_nguyen_lieu();

--check khach hang co the dung tai quan khong
CREATE TRIGGER trigger_check_dung_tai_quan
BEFORE INSERT OR UPDATE
ON DON_HANG
FOR EACH ROW
EXECUTE FUNCTION check_dung_tai_quan();

--check khuyen mai cho don hang	
CREATE TRIGGER trigger_check_km_dh
BEFORE INSERT OR UPDATE
ON DON_HANG
FOR EACH ROW
EXECUTE FUNCTION check_km_dh();

--check khoang thoi gian lam viec cua nhan vien, ca lam viec, cua hang
CREATE TRIGGER trigger_check_tg_CLV_NVLV
BEFORE INSERT OR UPDATE
ON NHAN_VIEN_LAM_VIEC_TRONG_CA_LAM_VIEC
FOR EACH ROW
EXECUTE FUNCTION check_tg_CLV_NVLV();

CREATE TRIGGER trigger_check_tg_CLV_CH
BEFORE INSERT OR UPDATE
ON CA_LAM_VIEC
FOR EACH ROW
EXECUTE FUNCTION check_tg_CLV_CH();

--check thoi gian nhan vien: nhan vien quan ly cua hang, thoi gian thuong phat, thoi gian bang tinh luong
CREATE TRIGGER trigger_check_tg_nv
BEFORE INSERT OR UPDATE
ON BANG_TINH_LUONG
FOR EACH ROW
EXECUTE FUNCTION check_tg_nv();

CREATE TRIGGER trigger_check_tg_nv
BEFORE INSERT OR UPDATE
ON THUONG
FOR EACH ROW
EXECUTE FUNCTION check_tg_nv();

CREATE TRIGGER trigger_check_tg_nv
BEFORE INSERT OR UPDATE
ON PHAT
FOR EACH ROW
EXECUTE FUNCTION check_tg_nv();

CREATE TRIGGER trigger_check_tg_nv
BEFORE INSERT OR UPDATE
ON NHAN_VIEN_QUAN_LY_CUA_HANG
FOR EACH ROW
EXECUTE FUNCTION check_tg_nv();
-- check hoa don nhap kho co nguyen lieu
CREATE TRIGGER trigger_check_nguyen_lieu_hoa_don
BEFORE INSERT OR UPDATE
ON HOA_DON_NHAP_KHO_CO_NGUYEN_LIEU
FOR EACH ROW
EXECUTE FUNCTION check_nguyenlieu_CH_HDNK();

--check luong toi thieu nhan vien toan thoi gian va ban thoi gian

CREATE TRIGGER trigger_check_luong_toi_thieu_ban_thoi_gian
BEFORE INSERT OR UPDATE
ON BAN_THOI_GIAN
FOR EACH ROW
EXECUTE FUNCTION check_luong_gio_toi_thieu();

CREATE TRIGGER trigger_check_luong_toi_thieu_toan_thoi_gian
BEFORE INSERT OR UPDATE
ON TOAN_THOI_GIAN
FOR EACH ROW
EXECUTE FUNCTION check_luong_thang_toi_thieu();

-- trigger update nguyen lieu cua hang sau khi thêm hóa đơn nhập kho
CREATE TRIGGER trigger_update_sl_nguyen_lieu
AFTER INSERT OR UPDATE OR DELETE
ON HOA_DON_NHAP_KHO
FOR EACH ROW 
EXECUTE FUNCTION update_sl_nguyen_lieu_cua_hang();

-- trigger update nguyen lieu cua hang sau khi thêm món cần nguyên liệu
CREATE TRIGGER trigger_update_sl_nguyen_lieu
AFTER INSERT OR UPDATE OR DELETE
ON DON_HANG
FOR EACH ROW
EXECUTE FUNCTION update_sl_nguyen_lieu_cua_hang();