@extends('layouts.app')
@section('content')
<div class="container">
            <h2>Registration</h2>
@if (count($errors) > 0)
   <div class = "alert alert-danger">
      <ul>
         @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
         @endforeach
      </ul>
   </div>
@endif
    <form class="form-horizontal" role="form" action="{{route('contact.store')}}" method="post" enctype="multipart/form-data">
{{csrf_field()}}
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <span class="help-block text-danger">* Required fields</span>
            </div>
        </div>
        <div class="row col-sm-9">
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="firstName" class=" control-label">First Name</label>
                    <div class="">
                        <input type="text" id="firstName" value="{{old('first_name')}}" name="first_name" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="lastName" class=" control-label">Middle Name*</label>
                    <div class="">
                        <input type="text" id="MiddleName" name="middle_name" value="{{old('middle_name')}}" placeholder="Middle Name" class="form-control" autofocus>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="lastName" class=" control-label">Last Name*</label>
                    <div class="">
                        <input type="text" id="lastName" value="{{old('last_name')}}" name="last_name" placeholder="Last Name" class="form-control" autofocus>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-3 control-label">Email*</label>
            <div class="col-sm-9">
                <input type="email" id="email" value="{{old('email')}}" placeholder="Email" class="form-control" name= "email">
            </div>
        </div>
        
        
        <div class="form-group">
            <label for="phoneNumber" class="col-sm-3 control-label">Phone number *</label>
            <div class="col-sm-9">
                <input type="phoneNumber" id="phoneNumber" value="{{old('mobile_number')}}" name="mobile_number" placeholder="Phone number" class="form-control">
                
            </div>
        </div>
        <div class="form-group">
            <label for="Landline" class="col-sm-3 control-label">Landline number </label>
            <div class="col-sm-9">
                <input type="Landline" id="Landline" value="{{old('landline_no')}}" name="landline_no" placeholder="Landline number" class="form-control">
                
            </div>
        </div>
        <div class="form-group">
            <label for="customFile" class="col-sm-3 control-label">Choose Photo (file should be 500 kb)</label>
            <div class="col-sm-9">
                
                <div class="custom-file  ">
                    <input type="file" class="custom-file-input" id="customFile" name="photo">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="Notes" class="col-sm-3 control-label">Note</label>
            <div class="col-sm-9">
                <textarea  id="Notes" name="notes"  class="form-control">{{old('notes')}}</textarea>
                
            </div>
        </div>
        <!-- /.form-group -->
        
        <button type="submit" class="btn btn-primary w-25 ml-3">Register</button>
        </form> <!-- /form -->
        </div> <!-- ./container -->
        <script>
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
        </script>
        @endsection