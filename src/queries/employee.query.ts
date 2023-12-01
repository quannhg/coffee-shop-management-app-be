import { CreateEmployeeInputDto, EmployeeConditionSelectDto, UpdateEmployeeBodyDto } from '@dtos/in';
import { capitalizeFirstLetter, poolQuery } from '@utils';
import { logger } from '@utils';
import moment from 'moment';

const selectByUsername = async (username: string, fields?: string[]): Promise<Record<string, string>[]> => {
    try {
        // Generate the SELECT query dynamically based on the provided fields or default to '*'
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
        const queryText = `SELECT ${selectFields} FROM nhan_vien WHERE Ten_tai_khoan = $1`;

        const { rows } = await poolQuery({ text: queryText, values: [username] });

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Ten_tai_khoan');
        logger.error(err);
        throw err;
    }
};

const selectById = async (id: string, fields?: string[]): Promise<Record<string, string>[]> => {
    try {
        // Generate the SELECT query dynamically based on the provided fields or default to '*'
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
        const queryText = `SELECT ${selectFields} FROM nhan_vien WHERE ma_nhan_vien = $1`;

        const { rows } = await poolQuery({ text: queryText, values: [id] });

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Ma_nhan_vien');
        logger.error(err);
        throw err;
    }
};

// const selectIncludeOrderAndFilter: (
//     filterOrder: EmployeeConditionSelectDto,
//     fields: string[]
// ) => Promise<Record<string, string>[]> = async ({ filter, order }, fields) => {
//     try {
//         const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
//         let queryText = `SELECT ${selectFields} FROM nhan_vien`;

//         queryText += ` JOIN nhan_vien_lam_viec_tai_cua_hang ON nhan_vien.ma_nhan_vien = nhan_vien_lam_viec_tai_cua_hang.ma_nhan_vien`;

//         if (filter) {
//             const filterConditions = [];

//             if (filter.role && filter.role.length > 0) {
//                 filterConditions.push(`role IN ('${filter.role.join("','")}')`);
//             }

//             if (filter.gender && filter.gender.length > 0) {
//                 filterConditions.push(`gender IN ('${filter.gender.join("','")}')`);
//             }

//             if (filterConditions.length > 0) {
//                 queryText += ` WHERE ${filterConditions.join(' AND ')}`;
//             }
//         }

//         if (order) {
//             const orderBy = Object.entries(order)
//                 .map(([key, value]) => `${key} ${value}`)
//                 .join(', ');

//             if (orderBy) {
//                 queryText += ` ORDER BY ${orderBy}`;
//             }
//         }

//         const { rows } = await poolQuery({ text: queryText });

//         return rows;
//     } catch (err) {
//         logger.error('Error when retrieving user data by Ma_nhan_vien');
//         logger.error(err);
//         throw err;
//     }
// };

const selectIncludeOrderAndFilter: (
    filterOrder: EmployeeConditionSelectDto,
    shopId: string,
    fields: string[]
) => Promise<Record<string, string>[]> = async ({ filter, order }, shopId, fields) => {
    try {
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
        const queryText = `SELECT ${selectFields} FROM get_employee_data($1, $2, $3, $4, $5)`;

        const { rows } = await poolQuery({
            text: queryText,
            values: [
                shopId,
                filter.role,
                filter.gender,
                ['ho_va_ten', 'vai_tro', 'ngay_vao_lam', 'ngay_sinh', 'gioi_tinh'],
                Object.values(order)
            ]
        });

        logger.error(rows);

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Ma_nhan_vien');
        logger.error(err);
        throw err;
    }
};

const selectByPartialName = async (partialName: string, fields?: string[]): Promise<Record<string, string>[]> => {
    try {
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';

        const queryText = `SELECT ${selectFields} FROM nhan_vien WHERE ten_nhan_vien ILIKE $1`;

        const { rows } = await poolQuery({ text: queryText, values: [`%${partialName}%`] });

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by partial name');
        logger.error(err);
        throw err;
    }
};

const insertSingleEmployee = async (employee: CreateEmployeeInputDto): Promise<void> => {
    try {
        const queryText = 'CALL them_nhan_vien($1, $2, $3, $4, $5, $6, $7, $8, $9)';
        const formattedBirthday = moment(employee.birthday).format('YYYY-MM-DD');
        const formatGender = capitalizeFirstLetter(employee.gender);

        //TODO: ADD JOIN AT
        await poolQuery({
            text: queryText,
            values: [
                employee.name,
                formattedBirthday,
                formatGender,
                employee.address,
                employee.phoneNum,
                employee.bankNum,
                employee.academicLevel,
                '',
                ''
            ]
        });
    } catch (err) {
        logger.error('Error when inserting employee data');
        logger.error(err);
        throw err;
    }
};

const updateSingleEmployee = async (employeeId: string, employee: UpdateEmployeeBodyDto): Promise<void> => {
    try {
        const queryText = `CALL sua_nhan_vien_qua_ma_nhan_vien($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)`;
        const formattedBirthday = moment(employee.birthday).format('YYYY-MM-DD');
        const formatGender = capitalizeFirstLetter(employee.gender);

        //TODO: add joinedAT, leaveAt
        await poolQuery({
            text: queryText,
            values: [
                employeeId,
                employee.name,
                formattedBirthday,
                formatGender,
                employee.address,
                employee.phoneNum,
                employee.bankNum,
                employee.academicLevel,
                undefined,
                undefined
                // employee.joinedAt,
                // employee.leaveAt
            ]
        });
    } catch (err) {
        logger.error('Error when retrieving user data by partial name');
        logger.error(err);
        throw err;
    }
};

const removeSingleEmployee = async (employeeId: string): Promise<void> => {
    try {
        const queryText = `CALL xoa_nhan_vien($1)`;

        await poolQuery({
            text: queryText,
            values: [employeeId]
        });
    } catch (err) {
        logger.error('Error when retrieving user data by partial name');
        logger.error(err);
        throw err;
    }
};

export const employeeQuery = {
    selectByUsername,
    selectById,
    selectIncludeOrderAndFilter,
    selectByPartialName,
    insertSingleEmployee,
    updateSingleEmployee,
    removeSingleEmployee
};
