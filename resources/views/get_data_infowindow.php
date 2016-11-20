<?php

  function print_detail($key){
    $detail = DB::table('Detail')->where('key',$key)->first();
    //print_r($detail) ;
    //foreach ($detail as $val) {
      echo '<h4>'.$detail->name.'</h4>';
      //echo '<div><img src="/Image/'.$link_data.'/'.$val->image.'" width="400" height="300"/></div>';
      echo '<p>'.$detail->text.'</p>';
    //}
  }

  //$data_link = $link;
  //$overview = DB::table('Overview')->where('link',$link)->first();
  //echo '<h2>'.$overview->title.'</h2>';
  //echo '<p>'.$overview->text.'</p>';

  print_detail($key);
