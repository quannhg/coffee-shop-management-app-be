import { AgeDistributeChartResult, GenderDistributeChartResult } from '@dtos/out';
import { chartHandler } from '@handlers';
import { createRoutes } from '@utils';
import { ChartParams } from '@dtos/in';

export const chartPlugin = createRoutes('Chart', [
    {
        method: 'GET',
        url: '/age/:shopId',
        schema: {
            summary: 'Get age distribution of employee',
            description: '',
            params: ChartParams,
            response: {
                200: AgeDistributeChartResult
            }
        },
        handler: chartHandler.ageDistribute
    },
    {
        method: 'GET',
        url: '/gender/:shopId',
        schema: {
            summary: 'Get gender distribution of employee',
            description: '',
            params: ChartParams,
            response: {
                200: GenderDistributeChartResult
            }
        },
        handler: chartHandler.genderDistribute
    }
]);
