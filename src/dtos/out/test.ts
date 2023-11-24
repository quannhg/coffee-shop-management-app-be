import { ObjectId } from '@dtos/common';
import { Static, Type } from '@sinclair/typebox';

export const abcResultDto = Type.Object({
    id: ObjectId,
    username: Type.String({ format: 'email' })
});

export type abcResultDto = Static<typeof abcResultDto>;
