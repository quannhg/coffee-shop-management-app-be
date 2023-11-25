import { ID_LENGTH } from '@constants';
import { PHONE_NUMBER_LENGTH } from '@constants';
import { Static, Type } from '@sinclair/typebox';

export const ObjectId = Type.String({
    minLength: ID_LENGTH,
    maxLength: ID_LENGTH
});

export const ObjectPhoneNumber = Type.String({
    minLength: PHONE_NUMBER_LENGTH,
    maxLength: PHONE_NUMBER_LENGTH
});

export type ObjectId = Static<typeof ObjectId>;
export type ObjectPhoneNumber = Static<typeof ObjectPhoneNumber>;
