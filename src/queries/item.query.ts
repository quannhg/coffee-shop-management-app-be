import { poolQuery } from '@utils';
import { logger } from '@utils';

const selectAll = async (shopId: string): Promise<Record<string, string>[]> => {
    try {
        const queryText = `SELECT * FROM mon NATURAL JOIN cua_hang_co_mon` + (shopId === 'all' ? '' : ' WHERE ma_cua_hang = $1');

        const { rows } = await poolQuery({ text: queryText, values: shopId === 'all' ? [] : [shopId] });

        const result = await Promise.all(
            rows.map(async (item) => {
                const queryTextCheck = `SELECT * FROM check_du_nguyen_lieu($1, $2)`;
                const { rows } = await poolQuery({ text: queryTextCheck, values: [item.ma_cua_hang, item.ma_mon] });
                return { ...item, status: rows[0].check_du_nguyen_lieu };
            })
        );

        return result;
    } catch (err) {
        logger.error('Error when retrieving user data by Sdt');
        logger.error(err);
        throw err;
    }
};

export const itemQuery = {
    selectAll
};
