<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TestController extends Controller
{
    public function testdb(Request $r) {
        $doctors   =   DB::table('doctors')->select('doctors.id','doctors.name','departments.name as deptt_name')->join('departments','departments.id','doctors.deptt_id')->take(4)->get();
        
        $departments = DB::table('departments')->select('id','name')->take(4)->get();

        $patients   =   DB::table('patients')->select('id','name','disease')->take(4)->get();

        return view('index',compact('doctors','departments','patients'));
    }
}