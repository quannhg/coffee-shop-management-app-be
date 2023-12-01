import { ShopResult } from '@dtos/out';
import { shopHandler } from '@handlers';
import { createRoutes } from '@utils';

export const shopPlugin = createRoutes('Shop', [
    {
        method: 'GET',
        url: '',
        schema: {
            summary: 'Get simple shop list for select',
            description: '',
            response: {
                200: ShopResult
            }
        },
        handler: shopHandler.shopList
    }
]);
