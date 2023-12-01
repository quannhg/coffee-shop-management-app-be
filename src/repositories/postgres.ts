import { envs } from '@configs';
import { logger } from '@utils';
import { Pool } from 'pg';

export const pool = new Pool({
    host: envs.POSTGRES_HOST,
    port: envs.POSTGRES_PORT,
    user: envs.POSTGRES_USER,
    password: envs.POSTGRES_PASSWORD,
    max: 10,
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000
});

pool.on('connect', (client) => {
    logger.info('Client connected to PostgreSQL');

    if (envs.NODE_ENV === 'development') {
        client.on('notice', (msg) => {
            logger.warn('Notice received from PostgreSQL:', msg);
        });

        client.on('notification', (msg) => {
            logger.info('Notification received from PostgreSQL:', msg);
        });
    }

    client.on('error', (err) => {
        logger.error('Error in PostgreSQL client connection:', err);
    });

    client.on('end', () => {
        logger.info('Client disconnected from PostgreSQL');
    });
});

// eslint-disable-next-line @typescript-eslint/no-unused-vars
pool.on('error', (err, __client) => {
    logger.error('Error in the database pool connection:', err);
});
