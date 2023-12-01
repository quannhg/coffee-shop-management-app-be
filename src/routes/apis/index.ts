// import { verifyToken } from 'src/hooks';
import { FastifyInstance } from 'fastify';
import { userPlugin } from './user.plugin';
import { customerPlugin } from './customer.plugin';
import { employeePlugin } from './employee.plugin';
import { chartPlugin } from './chart.plugin';

export async function apiPlugin(app: FastifyInstance) {
    // app.addHook('onRequest', verifyToken);
    app.register(userPlugin, { prefix: '/user' });
    app.register(customerPlugin, { prefix: '/customer' });
    app.register(employeePlugin, { prefix: '/employee' });
    app.register(chartPlugin, { prefix: '/chart' });
}
