import { ChartParams } from '@dtos/in';
import { AgeDistributeChartResult, GenderDistributeChartResult } from '@dtos/out';
import { Handler } from '@interfaces';
import { faker } from '@faker-js/faker';

const ageDistribute: Handler<AgeDistributeChartResult, { Params: ChartParams }> = async (__req, res) => {
    const labels: number[] = [];
    for (let i = 0; i < 10; i++) {
        labels.push(faker.number.int({ min: 15, max: 35 }));
    }
    const maleDataset = labels.map(() => faker.number.int({ min: 1, max: 15 }));

    const femaleDataset = labels.map(() => faker.number.int({ min: 1, max: 15 }));

    return res.send({
        age: labels,
        amount: { male: maleDataset, female: femaleDataset }
    });
};

const genderDistribute: Handler<GenderDistributeChartResult, { Params: ChartParams }> = async (__req, res) => {
    const labels: ['Nam', 'Nữ'] = ['Nam', 'Nữ'];
    const dataset = labels.map(() => faker.number.int({ min: 1, max: 15 }));

    return res.send({ gender: labels, amount: dataset });
};

export const chartHandler = {
    ageDistribute,
    genderDistribute
};
