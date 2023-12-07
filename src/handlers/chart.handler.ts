import { ChartParams } from '@dtos/in';
import { AgeDistributeChartResult, GenderDistributeChartResult, TableStatusDistributeChartResult } from '@dtos/out';
import { Handler } from '@interfaces';
import { employeeQuery, shopQuery } from '@queries';
import { logger } from '@utils';

const ageDistribute: Handler<AgeDistributeChartResult, { Params: ChartParams }> = async (req, res) => {
    const ageDistribute = await employeeQuery.selectCountByAgeAndGender(req.params.shopId);

    function convertArrayToObject(input: Record<string, string>[]) {
        const result: AgeDistributeChartResult = {
            age: [],
            amount: {
                male: [],
                female: []
            }
        };

        const uniqueAges = Array.from(new Set(input.map((item) => item.do_tuoi)));

        const maleAmounts: number[] = Array(uniqueAges.length).fill(0);
        const femaleAmounts: number[] = Array(uniqueAges.length).fill(0);

        input.forEach((item) => {
            const ageIndex = uniqueAges.indexOf(item.do_tuoi);
            const employeeCount = Number(item.so_luong);

            if (item.gioi_tinh === 'Nam') {
                maleAmounts[ageIndex] += employeeCount;
            } else if (item.gioi_tinh === 'Nu') {
                femaleAmounts[ageIndex] += employeeCount;
            }
        });

        result.age = uniqueAges.map((age) => Number(age));
        result.amount.male = maleAmounts;
        result.amount.female = femaleAmounts;

        return result;
    }

    return res.send(convertArrayToObject(ageDistribute));
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
