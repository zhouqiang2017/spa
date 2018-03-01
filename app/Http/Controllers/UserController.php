<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function profile()
    {
        request()->user()->update( request()->only('name', 'email') );
        return response()->json(['status' =>true , 'message' => 'profile update success!'],200);
    }
    public function  password()
    {
        request()->user()->update(['password' => bcrypt(request('password'))]);
        return response()->json(['status' =>true , 'message' => 'password update success!'],200);
    }
}
