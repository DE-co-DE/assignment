<?php

namespace App\Http\Controllers;

use App\Tbl_contact_directory;
use Illuminate\Http\Request;
use DataTables;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {

         if ($request->ajax()) {
            $data = Tbl_contact_directory::all();
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $route= route('contact.show', $row->tbl_contact_id);
                           $btn = '<a href="'.$route.'" data-toggle="tooltip"  data-original-title="show" class="show btn btn-primary btn-sm showProduct">View</a>';
   
                         
    
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
      
       
        return view('home');
    }
}
