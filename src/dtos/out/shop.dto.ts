import { Static, Type } from '@sinclair/typebox';

export const ShopResult = Type.Array(
    Type.Object({
        name: Type.String(),
        id: Type.String()
    })
);

export type ShopResult = Static<typeof ShopResult>;
