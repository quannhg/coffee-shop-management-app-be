import { Static, Type } from '@sinclair/typebox';

export const ItemParams = Type.Object({
    shopId: Type.String()
});

export type ItemParams = Static<typeof ItemParams>;
