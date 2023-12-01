import { ChartParams } from '@dtos/in';
import { AgeDistributeChartResult, GenderDistributeChartResult } from '@dtos/out';
import { Handler } from '@interfaces';
import { faker } from '@faker-js/faker';

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

const genderDistribute: Handler<GenderDistributeChartResult, { Params: ChartParams }> = async (__req, res) => {
    const genderLabels: ['Nam', 'Nữ'] = ['Nam', 'Nữ'];
    const genderDataset = genderLabels.map(() => faker.number.int({ min: 1, max: 15 }));
    return res.send({ gender: genderLabels, amount: genderDataset });
};

export const chartHandler = {
    ageDistribute,
    genderDistribute
};
