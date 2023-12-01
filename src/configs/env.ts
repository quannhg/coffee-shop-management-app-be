import { config as configEnv } from 'dotenv';
import { num, str, cleanEnv } from 'envalid';

configEnv();

export const envs = cleanEnv(process.env, {
    NODE_ENV: str<NodeEnv>({
        devDefault: 'development',
        choices: ['development', 'test', 'production']
    }),
    JWT_SECRET: str(),
    COOKIE_SECRET: str(),
    CORS_WHITE_LIST: str(),
    POSTGRES_HOST: str(),
    POSTGRES_USER: str(),
    POSTGRES_PASSWORD: str(),
    POSTGRES_DB: str(),
    POSTGRES_PORT: num({ default: 3001 })
});

export const CORS_WHITE_LIST = envs.CORS_WHITE_LIST.split(',');
