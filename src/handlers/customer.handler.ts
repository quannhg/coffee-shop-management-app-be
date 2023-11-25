import { CUSTOMER_NOT_FOUND } from '@constants';
import { Handler } from '@interfaces';
import { customerQuery } from 'src/queries';
import { customerResultDto } from '@dtos/out';
import { ObjectPhoneNumber } from '@dtos/common';

const getCustomerByPhoneNumber: Handler<customerResultDto, { Params: { phoneNumber: ObjectPhoneNumber } }> = async (req, res) => {
    const phoneNumber = req.params.phoneNumber;

    const customers = await customerQuery.selectByPhoneNumber(phoneNumber, ['sdt', 'ten_khach_hang']);

    if (customers.length === 0) return res.badRequest(CUSTOMER_NOT_FOUND);

    return res.status(200).send({
        phoneNumber: customers[0].sdt,
        name: customers[0].ten_khach_hang
    });
};

const getCustomersByName: Handler<customerResultDto[], { Params: { customerName: string } }> = async (req, res) => {
    const customerName = req.params.customerName;

    const customers = await customerQuery.selectByName(customerName, ['sdt', 'ten_khach_hang']);

    if (customers.length === 0) return res.badRequest(CUSTOMER_NOT_FOUND);

    const customerDetails: customerResultDto[] = customers.map((customer) => ({
        phoneNumber: customer.sdt,
        name: customer.ten_khach_hang
    }));

    return res.status(200).send(customerDetails);
};

export const customerHandler = {
    getCustomerByPhoneNumber,
    getCustomersByName
};
