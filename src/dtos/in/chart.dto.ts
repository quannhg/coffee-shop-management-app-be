import { Static, Type } from '@sinclair/typebox';

export const ChartParams = Type.Object({
    shopId: Type.String()
});

export type ChartParams = Static<typeof ChartParams>;
