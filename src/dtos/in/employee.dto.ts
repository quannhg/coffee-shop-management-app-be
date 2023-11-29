import { EmployeeRole, Gender, OrderType } from '@dtos/common';
import { Static, Type } from '@sinclair/typebox';

export const EmployeeOrderObject = Type.Object({
    name: OrderType,
    role: OrderType,
    joinedAt: OrderType,
    birthday: OrderType,
    gender: OrderType
});

export const EmployeeFilterObject = Type.Object({
    role: Type.Array(EmployeeRole),
    gender: Type.Array(Gender)
});

export const EmployeeInputDto = Type.Object({
    order: EmployeeOrderObject,
    filter: EmployeeFilterObject
});

export type EmployeeOrderObject = Static<typeof EmployeeOrderObject>;
export type EmployeeFilterObject = Static<typeof EmployeeFilterObject>;
export type EmployeeInputDto = Static<typeof EmployeeInputDto>;
