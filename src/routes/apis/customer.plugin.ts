import { customerHandler } from '@handlers';
import { createRoutes } from '@utils';
import { customerResultDto } from 'src/dtos/out/customer.dto';
import { ObjectPhoneNumber } from '@dtos/common';
import { Type } from '@sinclair/typebox';
export const customerPlugin = createRoutes('Customer', [
    {
        method: 'GET',
        url: '/phone/:phoneNumber',
        schema: {
            summary: 'Get customer details from their phone number',
            description: 'Retrieve the phone number and name of the customer from their phone number. Used for simple query.',
            params: {
                type: 'object',
                properties: { phoneNumber: ObjectPhoneNumber },
                required: ['phoneNumber']
            },
            response: {
                200: customerResultDto
            }
        },
        handler: customerHandler.getCustomerByPhoneNumber
    },
    {
        method: 'GET',
        url: '/name/:customerName',
        schema: {
            summary: 'Get customer info from their name',
            description:
                'Retrieve the phone number and name of the customer from their name. Used to get multiple customers with the same name.',
            params: {
                type: 'object',
                properties: {
                    customerName: { type: 'string' }
                },
                required: ['customerName']
            },
            response: {
                200: Type.Array(customerResultDto)
            }
        },
        handler: customerHandler.getCustomersByName
    }
]);
