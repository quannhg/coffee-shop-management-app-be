import { Static, Type } from '@sinclair/typebox';

export const ItemResult = Type.Array(Type.Record(Type.String(), Type.String()));

export type ItemResult = Static<typeof ItemResult>;
