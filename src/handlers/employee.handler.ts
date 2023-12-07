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
import { employeeQuery } from '@queries';
import { logger } from '@utils';

const get: Handler<EmployeeResultDto, { Body: EmployeeInputDto }> = async (req, res) => {
    const employees = await employeeQuery.selectIncludeOrderAndFilter(req.body.payload, req.body.shopId);

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

const getDetail: Handler<GetEmployeeDetailResultDto, { Params: GetEmployeeDetailParamsDto }> = async (req, res) => {
    const employee = await employeeQuery.selectById(req.params.employeeId);

    const formatEmployee = {
        id: employee.ma_nhan_vien,
        name: employee.ho_va_ten,
        avatarUrl: employee.avatarurl,
        address: employee.dia_chi,
        gender: employee.gioi_tinh,
        birthday: employee.ngay_sinh,
        phoneNum: employee.sdt,
        bankNum: employee.so_tk_ngan_hang,
        academicLevel: employee.trinh_do_hoc_van,
        joinedAt: employee.ngay_vao_lam,
        leaveAt: employee.ngay_nghi_viec,
        role: employee.vai_tro
    };

    return res.send(formatEmployee);
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
