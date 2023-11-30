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

export const Gender = Type.String({ enum: ['nam', 'nữ'] });

export const OrderType = Type.String({ enum: ['ASC', 'DESC'] });

export const EmployeeRole = Type.String({ enum: ['quản lý', 'bồi bàn', 'pha chế'] });

export const AcademicStandard = Type.String({ enum: ['High School Diploma', 'College Degree', 'Undergraduate Degree'] });

export type ObjectId = Static<typeof ObjectId>;
export type ObjectPhoneNumber = Static<typeof ObjectPhoneNumber>;
export type Gender = Static<typeof Gender>;
export type OrderType = Static<typeof OrderType>;
export type EmployeeRole = Static<typeof EmployeeRole>;
export type AcademicStandard = Static<typeof AcademicStandard>;
