import { AcademicStandard, EmployeeRole, Gender, OrderType } from '@dtos/common';
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
    payload: Type.Object({
        order: EmployeeOrderObject,
        filter: EmployeeFilterObject
    }),
    shopId: Type.String()
});

export const EmployeeSearchingParamsDto = Type.Object({ partialName: Type.String() });

export const CreateEmployeeInputDto = Type.Object({
    name: Type.String(),
    avatarUrl: Type.String(),
    address: Type.String(),
    gender: Gender,
    birthday: Type.Number(),
    phoneNum: Type.String(),
    bankNum: Type.String(),
    academicLevel: AcademicStandard,
    joinedAt: Type.Number(),
    role: EmployeeRole
});

export const UpdateEmployeeBodyDto = Type.Object({
    name: Type.String(),
    avatarUrl: Type.String(),
    address: Type.String(),
    gender: Gender,
    birthday: Type.Number(),
    phoneNum: Type.String(),
    bankNum: Type.String(),
    academicLevel: AcademicStandard,
    joinedAt: Type.Number(),
    leaveAt: Type.Number(),
    role: EmployeeRole
});

export const GetEmployeeDetailParamsDto = Type.Object({
    employeeId: Type.String()
});

export const UpdateEmployeeParamsDto = Type.Object({
    employeeId: Type.String()
});

export const DeleteEmployeeParamsDto = Type.Object({
    employeeId: Type.String()
});

export type EmployeeOrderObject = Static<typeof EmployeeOrderObject>;
export type EmployeeFilterObject = Static<typeof EmployeeFilterObject>;
export type EmployeeInputDto = Static<typeof EmployeeInputDto>;
export type EmployeeSearchingParamsDto = Static<typeof EmployeeSearchingParamsDto>;
export type CreateEmployeeInputDto = Static<typeof CreateEmployeeInputDto>;
export type GetEmployeeDetailParamsDto = Static<typeof GetEmployeeDetailParamsDto>;
export type UpdateEmployeeBodyDto = Static<typeof UpdateEmployeeBodyDto>;
export type UpdateEmployeeParamsDto = Static<typeof UpdateEmployeeParamsDto>;
export type DeleteEmployeeParamsDto = Static<typeof DeleteEmployeeParamsDto>;
