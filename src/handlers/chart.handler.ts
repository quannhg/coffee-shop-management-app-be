import { ChartParams } from '@dtos/in';
import { AgeDistributeChartResult, GenderDistributeChartResult, TableStatusDistributeChartResult } from '@dtos/out';
import { Handler } from '@interfaces';
import { employeeQuery, shopQuery } from '@queries';
import { logger } from '@utils';

const ageDistribute: Handler<AgeDistributeChartResult, { Params: ChartParams }> = async (__req, res) => {
    const ageDistribute = await employeeQuery.selectCountByAgeAndGender();

    const age = [];
    const maleDataset = [];
    const femaleDataset = [];

    for (const item of ageDistribute) {
        const ageGroup = Number(item['age_group']);
        const count = Number(item['employee_count']);
        const gender = item['gioi_tinh'];

        age.push(ageGroup);

        if (gender === 'Nam') {
            maleDataset.push(count);
            femaleDataset.push(0); // Assuming female count is zero if not present in the data
        } else {
            maleDataset.push(0); // Assuming male count is zero if not present in the data
            femaleDataset.push(count);
        }
    }

    return res.send({
        age: age,
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
