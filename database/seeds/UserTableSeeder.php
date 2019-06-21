<?php

use Illuminate\Database\Seeder;
use App\Role;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role_func = Role::where('name', 'funcionario')->first();
        $role_admin = Role::where('name', 'admin')->first();

        $func = new User();
        $func->name = 'Joao';
        $func->email = 'joao@gmail.com';
        $func->password = bcrypt('secret');
        $func->save();
        $func->roles()->attach($role_func);

        $admin = new User();
        $admin->name = 'Maria';
        $admin->email = 'maria@gmail.com';
        $admin->password = bcrypt('secret');
        $admin->save();
        $admin->roles()->attach($role_admin);
    }
}
