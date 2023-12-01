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
    __req,
    res
) => {
    // await employeeQuery.updateSingleEmployee(req.params.employeeId, req.body);

    return res.send({ status: 'success' });
};

const removeSingle: Handler<DeleteEmployeeResultDto, { Params: DeleteEmployeeParamsDto }> = async (req, res) => {
    // await employeeQuery.removeSingleEmployee(req.params.employeeId);

    return res.send({ status: 'success' });
};

export const employeeMockHandler = {
    get,
    getDetail,
    search,
    createSingle,
    updateSingle,
    removeSingle
};
