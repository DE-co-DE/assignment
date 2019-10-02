<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tbl_contact_directory;
use App\View;
use Illuminate\Support\Arr;
use Auth;


use App\Charts\ContactChart;

use DB;
class Contact extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('contact.index');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
       //dd($request->all());
              $this->validate($request,[
         'first_name'=>'required',
        
         'last_name'=>'required',
         'email'=>'required|email',
         'mobile_number'=>'numeric|size:10',
            'photo' => 'image|mimes:jpeg,png,jpg,gif,svg|max:500',
            'landline_no'=>'regex:/(01)[0-9]{9}/'


      ]);
              $data=$request->except('_token'); 
             // dd($data);
               $imageName = time().'.'.request()->photo->getClientOriginalExtension();
               request()->photo->move(public_path('images'), $imageName);
               $data['photo']=$imageName;

           $saved=Tbl_contact_directory::create($data); 
           if($saved){
            return redirect('/home')->with('success', 'Contact saved!');
           }else{
            return back()->with('error','some error occured try again');
           }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
       $data= Tbl_contact_directory::where('tbl_contact_id',$id)->first();
       $user_id=Auth::user()->id;
       View::create(['viewed_by'=>$user_id,'viewed_id'=>$id]);
      // ::where(DB::raw("(DATE_FORMAT(created_at,'%d'))"),date('d'))->take(7);
         $users = View::select('id','viewed_by', DB::raw("DATE_FORMAT(created_at, '%d') as data"))
         ->get()
          ->groupBy('data')->sortByDesc('created_at')->take(7) ;
        //dd($users->values()->toArray());
          $newArray=[];
        foreach ($users->values()->toArray() as  $value) {
            # code...
            array_push($newArray, count($value));

        }
                    $chart = new ContactChart;
$chart->labels($users->keys());
$chart->dataset('Last Seven days data', 'line', $newArray);

                // $chart = Charts::database($users, 'bar', 'highcharts') 

                //             ->title("Daily Views") 

                //             ->elementLabel("Total Views") 

                //             ->dimensions(1000, 500) 

                //             ->responsive(true) 

                //             ->groupByDay(date('d'), true);
        if($data){
           $views= View::where('viewed_id',$id)->get()->toArray();

            $count=count($views);

            return view('contact.show',compact('data','count','chart'));
        } else{
            return back()->with('error','Ooops looks like you hit something that doesnt exists');
        }

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
