import { poolQuery } from '@utils';
import { logger } from '@utils';

const selectAll = async (shopId: string): Promise<Record<string, string>[]> => {
    try {
        const queryText = `SELECT * FROM mon NATURAL JOIN cua_hang_co_mon` + (shopId === 'all' ? '' : ' WHERE ma_cua_hang = $1');

        const { rows } = await poolQuery({ text: queryText, values: shopId === 'all' ? [] : [shopId] });

        // rows.map((item)=>{
        //     const queryText = `SELECT * FROM mon NATURAL JOIN cua_hang_co_mon` + (shopId === 'all' ? '' : ' WHERE ma_cua_hang = $1');
        //     return {...item}
        // })

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Sdt');
        logger.error(err);
        throw err;
    }
};

export const itemQuery = {
    selectAll
};
