import { Static, Type } from '@sinclair/typebox';

export const AgeDistributeChartResult = Type.Object({
    age: Type.Array(Type.Number()),
    amount: Type.Object({
        male: Type.Array(Type.Number()),
        female: Type.Array(Type.Number())
    })
});

export const GenderDistributeChartResult = Type.Object({
    gender: Type.Tuple([Type.Literal('Nam'), Type.Literal('Nữ')]),
    amount: Type.Array(Type.Number())
});

export type AgeDistributeChartResult = Static<typeof AgeDistributeChartResult>;
export type GenderDistributeChartResult = Static<typeof GenderDistributeChartResult>;
