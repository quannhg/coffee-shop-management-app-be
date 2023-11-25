import { poolQuery } from '@utils';
import { logger } from '@utils';
import { ObjectPhoneNumber } from '@dtos/common';

const selectByPhoneNumber = async (sdt: ObjectPhoneNumber, fields?: string[]): Promise<Record<string, string>[]> => {
    try {
        // Generate the SELECT query dynamically based on the provided fields or default to '*'
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
        const queryText = `SELECT ${selectFields} FROM khach_hang WHERE sdt = $1`;

        const { rows } = await poolQuery({ text: queryText, values: [sdt] });

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Sdt');
        logger.error(err);
        throw err;
    }
};

const selectByName = async (ten: string, fields?: string[]): Promise<Record<string, string>[]> => {
    try {
        // Generate the SELECT query dynamically based on the provided fields or default to '*'
        const selectFields = fields && fields.length > 0 ? fields.join(', ') : '*';
        const queryText = `SELECT ${selectFields} FROM khach_hang WHERE ten_khach_hang = $1`;

        const { rows } = await poolQuery({ text: queryText, values: [ten] });

        return rows;
    } catch (err) {
        logger.error('Error when retrieving user data by Ten_khach_hang');
        logger.error(err);
        throw err;
    }
};

export const customerQuery = { selectByPhoneNumber, selectByName };
