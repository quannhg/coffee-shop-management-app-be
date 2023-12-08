import { compare } from 'bcrypt';
import { cookieOptions, LOGIN_FAIL, USER_NOT_FOUND } from '@constants';
import jwt from 'jsonwebtoken';
import { envs } from '@configs';
import { AuthInputDto } from '@dtos/in';
import { AuthResultDto } from '@dtos/out';
import { Handler } from '@interfaces';
import { employeeQuery } from 'src/queries';

const login: Handler<AuthResultDto, { Body: AuthInputDto }> = async (req, res) => {
    const user = await employeeQuery.selectByUsername(req.body.username, ['ten_tai_khoan', 'ma_nhan_vien', 'mat_khau_bam']);
    if (user.length === 0) return res.badRequest(USER_NOT_FOUND);

    const correctPassword = await compare(req.body.password, user[0].mat_khau_bam);
    if (!correctPassword) return res.badRequest(LOGIN_FAIL);

    const userToken = jwt.sign({ userId: user[0].ma_nhan_vien }, envs.JWT_SECRET);
    res.setCookie('token', userToken, cookieOptions);

    return res.status(200).send({
        id: user[0].ma_nhan_vien,
        username: user[0].ten_tai_khoan
    });
};

const logout: Handler<null> = async (__req, res) => {
    res.clearCookie('token');
    return null;
};

// const signup: Handler<AuthResultDto, { Body: AuthInputDto }> = async (req, res) => {
//     const hashPassword = await hash(req.body.password, SALT_ROUNDS);
//     let user: User;
//     try {
//         user = await prisma.user.create({
//             data: {
//                 email: req.body.username,
//                 password: hashPassword
//             }
//         });
//     } catch (err) {
//         logger.info(err);
//         return res.badRequest(DUPLICATED_EMAIL);
//     }

//     const userToken = jwt.sign({ userId: user.id }, envs.JWT_SECRET);
//     res.setCookie('token', userToken, cookieOptions);

//     return {
//         id: user.id,
//         username: user.email
//     };
// };

export const authHandler = {
    login,
    logout
};
