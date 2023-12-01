import { Handler } from '@interfaces';
import {
    EmployeeInputDto,
    EmployeeSearchingParamsDto,
    CreateEmployeeInputDto,
    UpdateEmployeeParamsDto,
    UpdateEmployeeBodyDto,
    DeleteEmployeeParamsDto
} from '@dtos/in';
import {
    EmployeeResultDto,
    EmployeeSearchingResultDto,
    CreateEmployeeResultDto,
    UpdateEmployeeResultDto,
    DeleteEmployeeResultDto
} from '@dtos/out';
import { employeeQuery } from 'src/queries';
import { faker } from '@faker-js/faker';

const get: Handler<EmployeeResultDto, { Body: EmployeeInputDto }> = async (__req, res) => {
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

    const generateFakeEmployee = (): Employee => ({
        id: faker.string.uuid(),
        name: faker.person.fullName(),
        avatarUrl: faker.image.avatar(),
        role: faker.helpers.arrayElement(['bồi bàn', 'pha chế', 'quản lý']),
        joinedAt: faker.date.recent().getTime(),
        birthday: faker.date.past().getTime(),
        gender: faker.helpers.arrayElement(['nam', 'nữ']),
        phoneNum: faker.phone.number()
    });

    const data: Employee[] = Array.from({ length: 10 }, () => generateFakeEmployee());

    return res.send(data);
};

const search: Handler<EmployeeSearchingResultDto, { Params: EmployeeSearchingParamsDto }> = async (__req, res) => {
    // const employees = await employeeQuery.selectByPartialName(req.params.partialName, ['ma_nhan_vien', 'ho_va_ten']);

    const generateFakeEmployee = () => ({
        ma_nhan_vien: faker.string.uuid(),
        ho_va_ten: faker.person.fullName()
    });

    const employees = Array.from({ length: 10 }, () => generateFakeEmployee());

    return res.send(
        employees.map((employee) => {
            return {
                id: employee.ma_nhan_vien,
                name: employee.ho_va_ten
            };
        })
    );
};

const createSingle: Handler<CreateEmployeeResultDto, { Body: CreateEmployeeInputDto }> = async (__req, res) => {
    // await employeeQuery.insertSingleEmployee(req.body);

    return res.send({ status: 'success' });
};

const updateSingle: Handler<UpdateEmployeeResultDto, { Params: UpdateEmployeeParamsDto; Body: UpdateEmployeeBodyDto }> = async (
    req,
    res
) => {
    await employeeQuery.updateSingleEmployee(req.params.employeeId, req.body);

    return res.send({ status: 'success' });
};

const removeSingle: Handler<DeleteEmployeeResultDto, { Params: DeleteEmployeeParamsDto }> = async (req, res) => {
    await employeeQuery.removeSingleEmployee(req.params.employeeId);

    return res.send({ status: 'success' });
};

export const employeeHandler = {
    get,
    search,
    createSingle,
    updateSingle,
    removeSingle
};
