import { EmployeeRole, Gender } from '@dtos/common';
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

export type EmployeeGeneralDto = Static<typeof EmployeeGeneralDto>;
export type EmployeeResultDto = Static<typeof EmployeeResultDto>;
export type EmployeeSearchingSuggestionObject = Static<typeof EmployeeSearchingSuggestionObject>;
export type EmployeeSearchingResultDto = Static<typeof EmployeeSearchingResultDto>;
export type CreateEmployeeResultDto = Static<typeof CreateEmployeeResultDto>;
export type UpdateEmployeeResultDto = Static<typeof UpdateEmployeeResultDto>;
