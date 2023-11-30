import { Handler } from '@interfaces';
import { EmployeeInputDto, EmployeeSearchingParamsDto } from 'src/dtos/in/employee.dto';
import { EmployeeResultDto, EmployeeSearchingResultDto } from 'src/dtos/out/emloyee.dto';
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
    const employees = await employeeQuery.selectByPartialName(req.params, ['ma_nhan_vien', 'ho_va_ten']);

    return res.send(
        employees.map((employee) => {
            return {
                id: employee.ma_nhan_vien,
                name: employee.ho_va_ten
            };
        })
    );
};

export const employeeHandler = {
    get,
    search
};
