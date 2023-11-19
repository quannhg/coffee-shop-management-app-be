import { envs } from '@configs';
import { pool } from '@repositories';
import { logger } from '@utils';
import { PoolClient, QueryConfig } from 'pg';

// This function is designed for executing queries using the global connection pool.
// It logs the query details in development mode and handles errors gracefully.
// For a more dedicated use, consider creating a pool client using createPoolClient().
export const poolQuery = async (queryTextOrConfig: string | QueryConfig) => {
    try {
        if (envs.NODE_ENV === 'development') logger.info(queryTextOrConfig);

        const result = await pool.query(queryTextOrConfig);

        return result;
    } catch (err) {
        logger.error('Error when query from pool');
        logger.error(err);
        throw err;
    }
};

// This function is intended for creating a dedicated database connection client for transactions.
// For more information on transactions, refer to https://node-postgres.com/features/transactions
export const createPoolClient = () => {
    let client: PoolClient | null = null;

    const connect = async () => {
        client = await pool.connect();
    };

    const release = async () => {
        try {
            if (client) {
                client.release();
                client = null;
            }
        } catch (error) {
            console.error('Error releasing client:', error);
        }
    };

    const executeQuery = async (queryTextOrConfig: string | QueryConfig) => {
        try {
            if (!client) {
                throw new Error('Connection not established. Call connect() before executing queries.');
            }
            if (envs.NODE_ENV === 'development') logger.info(queryTextOrConfig);

            const result = await client.query(queryTextOrConfig);
            return result;
        } catch (error) {
            console.error('Error executing query:', error);
            throw error;
        }
    };

    return {
        connect,
        release,
        executeQuery
    };
};
