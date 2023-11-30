import { employeeHandler } from '@handlers';
import { createRoutes } from '@utils';
import { EmployeeInputDto } from 'src/dtos/in/employee.dto';
import { EmployeeResultDto } from 'src/dtos/out/emloyee.dto';

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
    }
]);
