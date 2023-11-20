import { USER_NOT_FOUND } from '@constants';
import { UserDto } from '@dtos/out';
import { Handler } from '@interfaces';
import { employeeQuery } from 'src/queries';

const getUserById: Handler<UserDto> = async (req, res) => {
    const user = await employeeQuery.selectById(req.userId, ['ma_nhan_vien', 'ten_tai_khoan']);

    if (user.length === 0) return res.badRequest(USER_NOT_FOUND);

    return res.status(200).send({
        id: user[0].ma_nhan_vien,
        username: user[0].ten_tai_khoan
    });
};

export const usersHandler = {
    getUserById
};
