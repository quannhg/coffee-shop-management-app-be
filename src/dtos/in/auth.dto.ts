import { MIN_EMAIL_LENGTH, MIN_PASSWORD_LENGTH } from '@constants';
import { Static, Type } from '@sinclair/typebox';

// See https://github.com/sinclairzx81/typebox

export const AuthInputDto = Type.Object(
    {
        username: Type.String({ minLength: MIN_EMAIL_LENGTH }),
        password: Type.String({ minLength: MIN_PASSWORD_LENGTH })
    },
    {
        examples: [
            {
                username: 'admin',
                password: '123456789'
            }
        ]
    }
);

export type AuthInputDto = Static<typeof AuthInputDto>;
