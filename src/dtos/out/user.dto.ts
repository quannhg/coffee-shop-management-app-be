import { ObjectId } from '@dtos/common';
import { Static, Type } from '@sinclair/typebox';

export const UserDto = Type.Object({
    id: ObjectId,
    username: Type.String()
});

export type UserDto = Static<typeof UserDto>;
