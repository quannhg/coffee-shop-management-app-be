type Role = 'quản lý' | 'bồi bàn' | 'pha chế';

type Gender = 'nam' | 'nữ';

type Employee = {
    id: string;
    name: string;
    avatarUrl?: string;
    role: Role;
    joinedAt: number;
    birthday: number;
    gender: Gender;
    phoneNum: string;
};
