import { employeeHandler } from '@handlers';
import { createRoutes } from '@utils';
import {
    CreateEmployeeInputDto,
    DeleteEmployeeParamsDto,
    EmployeeInputDto,
    EmployeeSearchingParamsDto,
    GetEmployeeDetailParamsDto,
    UpdateEmployeeBodyDto,
    UpdateEmployeeParamsDto
} from '@dtos/in';
import {
    CreateEmployeeResultDto,
    DeleteEmployeeResultDto,
    EmployeeResultDto,
    EmployeeSearchingResultDto,
    GetEmployeeDetailResultDto,
    UpdateEmployeeResultDto
} from '@dtos/out';

export const employeePlugin = createRoutes('Employee', [
    {
        method: 'POST',
        url: '/filter-order',
        schema: {
            summary: 'Get all employee include filter and order',
            description: '',
            body: EmployeeInputDto,
            response: {
                200: EmployeeResultDto
            }
        },
        handler: employeeHandler.get
    },
    {
        method: 'GET',
        url: '/search/:partialName',
        schema: {
            summary: 'Search all employee have name include partial string',
            description: '',
            params: EmployeeSearchingParamsDto,
            response: {
                200: EmployeeSearchingResultDto
            }
        },
        handler: employeeHandler.search
    },
    {
        method: 'GET',
        url: '/:employeeId',
        schema: {
            summary: 'get detail specific employee infomation',
            description: '',
            params: GetEmployeeDetailParamsDto,
            response: {
                200: GetEmployeeDetailResultDto
            }
        },
        handler: employeeHandler.getDetail
    },
    {
        method: 'POST',
        url: '',
        schema: {
            summary: 'Create single employee',
            description: '',
            body: CreateEmployeeInputDto,
            response: {
                200: CreateEmployeeResultDto
            }
        },
        handler: employeeHandler.createSingle
    },
    {
        method: 'PUT',
        url: '/:employeeId',
        schema: {
            summary: 'Update employee information base on employee id',
            description: '',
            params: UpdateEmployeeParamsDto,
            body: UpdateEmployeeBodyDto,
            response: {
                200: UpdateEmployeeResultDto
            }
        },
        handler: employeeHandler.updateSingle
    },
    {
        method: 'DELETE',
        url: '/:employeeId',
        schema: {
            summary: 'Delete employee base on employee id',
            description: '',
            params: DeleteEmployeeParamsDto,
            response: {
                200: DeleteEmployeeResultDto
            }
        },
        handler: employeeHandler.removeSingle
    }
]);
