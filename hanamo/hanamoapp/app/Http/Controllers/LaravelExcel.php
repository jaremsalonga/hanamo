<?php

namespace App\Http\Controllers;

use App\MProducts;
use DB;
use Excel;
use Illuminate\Http\Request;

class LaravelExcel extends Controller
{
    public function importExport()
    {
        return view('importExport');
    }
 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function downloadExcel($type)
    {
        $data = MProducts::get()->toArray();
            
        return Excel::create('Products', function($excel) use ($data) {
            $excel->sheet('mySheet', function($sheet) use ($data)
            {
                $sheet->fromArray($data);
            });
        })->download($type);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function importExcel(Request $request)
    {
        $request->validate([
            'import_file' => 'required'
        ]);
 
        $path = $request->file('import_file')->getRealPath();
        $data = Excel::load($path)->get();
 
        if($data->count()){
            foreach ($data as $key => $value) {
                $arr[] = ['product_group_id' => $value->product_group_id, 'name' => $value->name];
            }
 
            if(!empty($arr)){
                MProducts::insert($arr);
            }
        }
 
        return back()->with('success', 'Insert Record successfully.');
    }
}
