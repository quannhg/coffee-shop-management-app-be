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

export type EmployeeGeneralDto = Static<typeof EmployeeGeneralDto>;
export type EmployeeResultDto = Static<typeof EmployeeResultDto>;
