import { Handler } from '@interfaces';
import { faker } from '@faker-js/faker';
import { ShopResult } from '@dtos/out';

const shopList: Handler<ShopResult> = async (__req, res) => {
    const shops = [];
    for (let i = 0; i < 10; i++) {
        shops.push({
            id: faker.string.uuid(),
            name: faker.company.name()
        });
    }

    return res.send(shops);
};

export const shopHandler = {
    shopList
};
