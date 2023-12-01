import { AcademicStandard, EmployeeRole, Gender } from '@dtos/common';
import { Static, Type } from '@sinclair/typebox';

export const EmployeeGeneralDto = Type.Object({
    id: Type.String(),
    name: Type.String(),
    avatarUrl: Type.Optional(Type.String({ format: 'url' })),
    role: EmployeeRole,
    joinedAt: Type.Number(),
    birthday: Type.Number(),
    gender: Gender,
    phoneNum: Type.String()
});

export const GetEmployeeDetailResultDto = Type.Object({
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

export const EmployeeResultDto = Type.Array(EmployeeGeneralDto);

export const EmployeeSearchingSuggestionObject = Type.Object({
    id: Type.String(),
    name: Type.String()
});

export const CreateEmployeeResultDto = Type.Object({
    status: Type.String()
});

export const UpdateEmployeeResultDto = Type.Object({
    status: Type.String()
});

export const EmployeeSearchingResultDto = Type.Array(EmployeeSearchingSuggestionObject);

export const DeleteEmployeeResultDto = Type.Object({
    status: Type.String()
});

export type EmployeeGeneralDto = Static<typeof EmployeeGeneralDto>;
export type GetEmployeeDetailResultDto = Static<typeof GetEmployeeDetailResultDto>;
export type EmployeeResultDto = Static<typeof EmployeeResultDto>;
export type EmployeeSearchingSuggestionObject = Static<typeof EmployeeSearchingSuggestionObject>;
export type EmployeeSearchingResultDto = Static<typeof EmployeeSearchingResultDto>;
export type CreateEmployeeResultDto = Static<typeof CreateEmployeeResultDto>;
export type UpdateEmployeeResultDto = Static<typeof UpdateEmployeeResultDto>;
export type DeleteEmployeeResultDto = Static<typeof DeleteEmployeeResultDto>;
