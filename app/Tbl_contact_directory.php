<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tbl_contact_directory extends Model
{
    //
    protected $fillable=['first_name','middle_name','last_name','email','mobile_number','landline_no','notes','photo','view'];
}
