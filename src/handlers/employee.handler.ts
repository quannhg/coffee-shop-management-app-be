import { Handler } from '@interfaces';
import {
    EmployeeInputDto,
    EmployeeSearchingParamsDto,
    CreateEmployeeInputDto,
    UpdateEmployeeParamsDto,
    UpdateEmployeeBodyDto
} from '@dtos/in';
import { EmployeeResultDto, EmployeeSearchingResultDto, CreateEmployeeResultDto, UpdateEmployeeResultDto } from '@dtos/out';
import { employeeQuery } from 'src/queries';

// role: string;
// joinedAt: number;

const get: Handler<EmployeeResultDto, { Body: EmployeeInputDto }> = async (req, res) => {
    const employees = await employeeQuery.selectIncludeOrderAndFilter(req.body, [
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
    await employeeQuery.insertSingleEmployee(req.body);

    return res.send({ status: 'success' });
};

const updateSingle: Handler<UpdateEmployeeResultDto, { Params: UpdateEmployeeParamsDto; Body: UpdateEmployeeBodyDto }> = async (
    req,
    res
) => {
    await employeeQuery.updateSingleEmployee(req.params.employeeId, req.body);

    return res.send({ status: 'success' });
};

export const employeeHandler = {
    get,
    search,
    createSingle,
    updateSingle
};
