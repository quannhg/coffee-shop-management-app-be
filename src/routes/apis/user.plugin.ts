import { UserDto } from '@dtos/out';
import { usersHandler } from '@handlers';
import { createRoutes } from '@utils';

export const userPlugin = createRoutes('User', [
    {
        method: 'GET',
        url: '',
        schema: {
            summary: 'Get information of the current account',
            description: 'Retrieve the ID and username of the currently authenticated employee account. Used for authentication checks.',
            response: {
                200: UserDto
            }
        },
        handler: usersHandler.getUserById
    }
]);
