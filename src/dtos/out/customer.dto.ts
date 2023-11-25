import { ObjectPhoneNumber } from '@dtos/common';
import { Static, Type } from '@sinclair/typebox';

export const customerResultDto = Type.Object({
    phoneNumber: ObjectPhoneNumber,
    name: Type.String()
});

export type customerResultDto = Static<typeof customerResultDto>;
