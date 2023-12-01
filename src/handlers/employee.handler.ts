import { Handler } from '@interfaces';
import {
    EmployeeInputDto,
    EmployeeSearchingParamsDto,
    CreateEmployeeInputDto,
    UpdateEmployeeParamsDto,
    UpdateEmployeeBodyDto,
    DeleteEmployeeParamsDto,
    GetEmployeeDetailParamsDto
} from '@dtos/in';
import {
    EmployeeResultDto,
    EmployeeSearchingResultDto,
    CreateEmployeeResultDto,
    UpdateEmployeeResultDto,
    DeleteEmployeeResultDto,
    GetEmployeeDetailResultDto
} from '@dtos/out';
// import { employeeQuery } from 'src/queries';
import { faker } from '@faker-js/faker';
import { employeeQuery } from '@queries';
import { logger } from '@utils';

const get: Handler<EmployeeResultDto, { Body: EmployeeInputDto }> = async (req, res) => {
    const employees = await employeeQuery.selectIncludeOrderAndFilter(req.body.payload, req.body.shopId, [
        'ma_nhan_vien',
        'ho_va_ten',
        'avatarUrl',
        'ngay_sinh',
        'gioi_tinh',
        'sdt',
        'vai_tro',
        'ngay_vao_lam'
    ]);

    return res.send(
        employees.map((employee) => {
            return {
                id: employee.ma_nhan_vien,
                name: employee.ho_va_ten,
                avatarUrl: employee.avatarUrl,
                birthday: Number(employee.ngay_sinh),
                gender: employee.gioi_tinh,
                phoneNum: employee.sdt,
                role: employee.vai_tro,
                joinedAt: Number(employee.ngay_vao_lam)
            };
        })
    );
};

const getDetail: Handler<GetEmployeeDetailResultDto, { Params: GetEmployeeDetailParamsDto }> = async (__req, res) => {
    // const employees = await employeeQuery.selectIncludeOrderAndFilter(req.body, [
    //     'ma_nhan_vien',
    //     'ho_va_ten',
    //     'avatarUrl',
    //     'ngay_sinh',
    //     'gioi_tinh',
    //     'sdt',
    //     'vai_tro',
    //     'ngay_vao_lam'
    // ]);

    // return res.send(
    //     employees.map((employee) => {
    //         return {
    //             id: employee.ma_nhan_vien,
    //             name: employee.ho_va_ten,
    //             avatarUrl: employee.avatarUrl,
    //             birthday: Number(employee.ngay_sinh),
    //             gender: employee.gioi_tinh,
    //             phoneNum: employee.sdt,
    //             role: employee.vai_tro,
    //             joinedAt: Number(employee.ngay_vao_lam)
    //         };
    //     })
    // );

    const employee = () => ({
        id: faker.string.uuid(),
        name: faker.person.fullName(),
        avatarUrl: faker.image.avatar(),
        address: faker.location.streetAddress(),
        gender: faker.helpers.arrayElement(['nam', 'nữ']),
        birthday: faker.date.past().getTime(),
        phoneNum: faker.phone.number(),
        bankNum: faker.number.int({ min: 1000970162509863 }),
        academicLevel: faker.helpers.arrayElement(['High School Diploma', 'College Degree', 'Undergraduate Degree']),
        joinedAt: faker.date.recent().getTime(),
        leaveAt: faker.date.recent().getTime(),
        role: faker.helpers.arrayElement(['bồi bàn', 'pha chế', 'quản lý'])
    });

    return res.send(employee());
};

const search: Handler<EmployeeSearchingResultDto, { Params: EmployeeSearchingParamsDto }> = async (req, res) => {
    const employees = await employeeQuery.selectByPartialName(req.params.partialName, ['ma_nhan_vien', 'ho_va_ten']);

    return res.send(
        employees.map((employee) => {
            return {
                id: employee.ma_nhan_vien,
                name: employee.ho_va_ten
            };
        })
    );
};

const createSingle: Handler<CreateEmployeeResultDto, { Body: CreateEmployeeInputDto }> = async (req, res) => {
    try {
        await employeeQuery.insertSingleEmployee(req.body);

        return res.send({ status: 'success' });
    } catch (error) {
        return res.badRequest(error.message);
    }
};

const updateSingle: Handler<UpdateEmployeeResultDto, { Params: UpdateEmployeeParamsDto; Body: UpdateEmployeeBodyDto }> = async (
    req,
    res
) => {
    try {
        await employeeQuery.updateSingleEmployee(req.params.employeeId, req.body);

        return res.send({ status: 'success' });
    } catch (err) {
        logger.error(err);
        return res.badRequest(err.message);
    }
};

const removeSingle: Handler<DeleteEmployeeResultDto, { Params: DeleteEmployeeParamsDto }> = async (req, res) => {
    try {
        await employeeQuery.removeSingleEmployee(req.params.employeeId);

        return res.send({ status: 'success' });
    } catch (error) {
        logger.error(error);
        return res.badRequest(error.message);
    }
};

export const employeeHandler = {
    get,
    getDetail,
    search,
    createSingle,
    updateSingle,
    removeSingle
};
