@extends('layouts.app')

@section('styles')
    
@endsection
@section('content')

<div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <div class="card-body">
                        <div class="card-title mb-4">
                            <div class="d-flex justify-content-start">
                                <div class="image-container">
                                    <img src="{{url('/')}}/images/{{$data->photo}}" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" />
                                  
                                </div>
                                <div class="userData ml-3">
                                    <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold"><a href="javascript:void(0);">{{$data->first_name.' '.$data->middle_name.' '.$data->last_name}}</a></h2>
                                    <h6 class="d-block"><a href="javascript:void(0)">{{$count?$count:0}}</a> Viewed</h6>
                                       <h6 class="d-block">Created at :<a href="javascript:void(0)">{{$data->created_at}}</a> </h6>
                                    <h6 class="d-block">Updated at :<a href="javascript:void(0)">{{$data->updated_at}}</a> </h6>
                                </div>
                                <div class="ml-auto">
                                    <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Discard Changes" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" aria-controls="connectedServices" aria-selected="false">Graph</a>
                                    </li>
                                </ul>
                                <div class="tab-content ml-1" id="myTabContent">
                                    <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                        

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Full Name</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                               {{$data->first_name.' '.$data->middle_name.' '.$data->last_name}}
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Emai id</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                               {{$data->email}}
                                            </div>
                                        </div>
                                        <hr />
                                        
                                        
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Mobile Number</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                {{$data->mobile_number}}
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">LandLine Number</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                {{$data->landline_no}}
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Notes</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                {{$data->notes}}


                                            </div>
                                        </div>
                                        <hr />

                                    </div>
                                    <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                         <div class="col-md-12" style="height: 400px;"> 
          {!! $chart->container() !!}
      </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>
      
    </div>
@endsection
@section('scripts')
   
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>

        {!! $chart->script() !!}
@endsection
