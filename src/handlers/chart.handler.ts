import { ChartParams } from '@dtos/in';
import { AgeDistributeChartResult, GenderDistributeChartResult, TableStatusDistributeChartResult } from '@dtos/out';
import { Handler } from '@interfaces';
import { faker } from '@faker-js/faker';
import { employeeQuery, shopQuery } from '@queries';
import { logger } from '@utils';

const ageDistribute: Handler<AgeDistributeChartResult, { Params: ChartParams }> = async (__req, res) => {
    const ageLabels: number[] = [];
    for (let i = 0; i < 10; i++) {
        ageLabels.push(faker.number.int({ min: 15, max: 35 }));
    }
    const maleDataset = ageLabels.map(() => faker.number.int({ min: 1, max: 15 }));

    const femaleDataset = ageLabels.map(() => faker.number.int({ min: 1, max: 15 }));

    return res.send({
        age: ageLabels,
        amount: { male: maleDataset, female: femaleDataset }
    });
};

const genderDistribute: Handler<GenderDistributeChartResult, { Params: ChartParams }> = async (req, res) => {
    try {
        const genderAmounts = await employeeQuery.selectAmountGender(req.params.shopId || '*');
        return res.send({
            gender: [genderAmounts[0].gioi_tinh, genderAmounts[1].gioi_tinh],
            amount: [genderAmounts[0].so_luong_nhan_vien, genderAmounts[1].so_luong_nhan_vien]
        });
    } catch (error) {
        logger.error(error);
        return res.badRequest(error.message);
    }
};

const TableStatusDistribute: Handler<TableStatusDistributeChartResult, { Params: ChartParams }> = async (req, res) => {
    try {
        const tableStatusAmounts = await shopQuery.selectTableStatusDistribute(req.params.shopId || '*');
        return res.send({
            statuses: ['Trống', 'Đặt trước', 'Đang ngồi'],
            amount: [tableStatusAmounts[0].so_ban_trong, tableStatusAmounts[0].so_ban_dat_truoc, tableStatusAmounts[0].so_ban_dang_ngoi]
        });
    } catch (error) {
        logger.error(error);
        return res.badRequest(error.message);
    }
};

export const chartHandler = {
    ageDistribute,
    genderDistribute,
    TableStatusDistribute
};
