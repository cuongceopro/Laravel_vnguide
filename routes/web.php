<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::controller('hello', 'HelloControler');

Route::get('hello', 'HelloControler@getIndex');

Route::get('post', function(){
  return '<html><body><h1>Hello World</h1><p>this is sample page.</p></body></html>';
});

Route::get('vietnamguide/{link?}', 'HelloControler@getVnguide');

Route::get('getDB', 'HelloControler@getDB');

/*
Route::get('getDB', function(){
  //$users = DB::connection('test')->select(id,text);
  //$users = DB::select('select id, text from test');

  //$data = DB::select('select * from MyTable');

  /*
  if ($result = $link->query($sql)) {
    while ($row = $result->fetch_assoc()) {
      $text = $row["text"] . "<br>";
    }
  }


  return '<html><body><h1>Hello World</h1><p>OK</p></body></html>';
}
);
*/

/*
Route::get('/posts/{post}/comments/{comment}', function($post, $abc){
  return 'Post:'.$post.'comment:'.$abc;
});

Route::get('user/{name?}', function ($name = 'John') {
    return $name;
});
*/

//Route::get('hello/post', 'HelloControler@postIndex');
//Route::get('hello', 'HelloControler@postIndex');
// Route::post('hello', 'HelloControler@hello');
