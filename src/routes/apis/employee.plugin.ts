import { employeeHandler } from '@handlers';
import { createRoutes } from '@utils';
import {
    CreateEmployeeInputDto,
    EmployeeInputDto,
    EmployeeSearchingParamsDto,
    UpdateEmployeeBodyDto,
    UpdateEmployeeParamsDto
} from '@dtos/in';
import { CreateEmployeeResultDto, EmployeeResultDto, EmployeeSearchingResultDto, UpdateEmployeeResultDto } from '@dtos/out';

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
    }
]);
