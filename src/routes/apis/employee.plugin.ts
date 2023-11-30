import { employeeHandler } from '@handlers';
import { createRoutes } from '@utils';
import { EmployeeInputDto, EmployeeSearchingParamsDto } from 'src/dtos/in/employee.dto';
import { EmployeeResultDto, EmployeeSearchingResultDto } from 'src/dtos/out/emloyee.dto';

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
    }
]);
