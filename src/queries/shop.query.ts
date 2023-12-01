import { poolQuery } from '@utils';
import { logger } from '@utils';

const selectAllShop = async (fields?: string[]): Promise<Record<string, string>[]> => {
    try {
        // Generate the SELECT query dynamically based on the provided fields or default to '*'
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
        const queryText = `SELECT ${selectFields} FROM cua_hang`;

        const { rows } = await poolQuery({ text: queryText });

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Sdt');
        logger.error(err);
        throw err;
    }
};

export const shopQuery = {
    selectAllShop
};
