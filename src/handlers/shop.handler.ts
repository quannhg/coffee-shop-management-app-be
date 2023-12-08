import { Handler } from '@interfaces';
import { ItemResult, ShopResult } from '@dtos/out';
import { itemQuery, shopQuery } from '@queries';
import { ItemParams } from '@dtos/in';

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

const itemList: Handler<ItemResult, { Params: ItemParams }> = async (req, res) => {
    const items = await itemQuery.selectAll(req.params.shopId);

    return res.send(
        items.map((item) => {
            return { id: item.ma_mon, name: item.ten_mon, avatarUrl: item.avatarurl, price: item.gia_tien, status: 'ready' };
        })
    );
};

export const shopHandler = {
    shopList,
    itemList
};
