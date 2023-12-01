import { Handler } from '@interfaces';
import { ShopResult } from '@dtos/out';
import { shopQuery } from '@queries';

const shopList: Handler<ShopResult> = async (__req, res) => {
    const shops = await shopQuery.selectAllShop(['ma_cua_hang', 'ten_cua_hang']);

    return res.send(
        shops.map((shop) => {
            return {
                id: shop.ma_cua_hang,
                name: shop.ten_cua_hang
            };
        })
    );
};

export const shopHandler = {
    shopList
};
