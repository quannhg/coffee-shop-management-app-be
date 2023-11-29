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

CREATE TRIGGER trigger_check_nguyen_lieu_hoa_don
BEFORE INSERT OR UPDATE
ON HOA_DON_NHAP_KHO_CO_NGUYEN_LIEU
FOR EACH ROW
EXECUTE FUNCTION check_nguyenlieu_CH_HDNK();