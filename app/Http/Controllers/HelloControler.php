<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Html\HtmlFacade;

use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class HelloControler extends Controller
{
    public function getIndex(Request $request)
    {
        return view('hello', ['message' => 'please type...']);
    }
    public function postIndex(Request $request)
    {
        $res = "you typed: " . $request->input('str');
        return view('hello', ['message' => $res]);
    }
    public function getVnguide($link='all')
    {
      return view('vietnamguide',['link' => $link]);
    }

    public function get_data_infowindow($key=''){
      return view('get_data_infowindow',['key' => $key]);
    }

    public function getDB(Request $request){

      //$users = DB::connection('test')->select(id,text);
      //$users = DB::table('test')->get();

      $data = DB::select('select text from test');

      //$text =

      //echo $users;
      print_r($data[0]->text);

      //while ($row = $data->fetch_assoc()) {
        //$filename = $row["text"];
        //echo '<img src="./image/'.$filename.'.jpg" alt="'.$filename.'" width="400" height="300"/>';
        //echo $row["text"] . "<br>";
      //}

      //echo $data[0];

      //if ($result = $link->query($sql)) {
        //while ($row = $users->fetch_assoc()) {
          //$text = $row["text"] . "<br>";
        //}
      //}
      //while ($row = mysqli_fetch_array($users)){
        //$first_name = $row['text'];
        //$last_name = $row['last_name'];
      //}


      return '<html><body><h1>Hello World</h1><p>'.$data[0]->text.'</p></body></html>';
    }
}
