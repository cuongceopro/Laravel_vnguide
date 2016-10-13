<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>ベトナム観光ガイド</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="{{{asset('css/bootstrap.css')}}}" rel="stylesheet">
    @yield('addCss')
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWRiRLEwQtoQpv7ZQ0T-1AoVaxAg9ZkT0&language=ja"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <meta name="robots" content="noindex,nofollow">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../bower_components/html5shiv/dist/html5shiv.js"></script>
      <script src="../bower_components/respond/dest/respond.min.js"></script>
    <![endif]-->
    <script>

     var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-23019901-1']);
      _gaq.push(['_setDomainName', "bootswatch.com"]);
        _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();

    </script>
  </head>
  <body>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <!--ベトナムガイド-->
        <div class="navbar-header">
          <a href="" class="navbar-brand">ベトナム観光ガイド</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar">a</span>
            <span class="icon-bar">b</span>
            <span class="icon-bar">c</span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="themes">地域<span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="themes">
                <li><a href="/vietnamguide/spot_east_north" target="_self">東北部</a></li>
                <li><a href="/vietnamguide/spot_westen_north" target="_self">西北部</a></li>
                <li><a href="/vietnamguide/spot_red_river_delta">紅河デルタ</a></li>
                <li><a href="/vietnamguide/spot_north_center">中北部</a></li>
                <li><a href="/vietnamguide/spot_southern_center">中南部</a></li>
                <li><a href="/vietnamguide/spot_taynguyen">タイ・グエン</a></li>
                <li><a href="/vietnamguide/spot_east_southern">東南部</a></li>
                <li><a href="/vietnamguide/spot_mekong_delta">メコン・デルタ</a></li>
              </ul>
            </li>
            <li>
              <a href="/vietnamguide" target="_self">おすすめツアー</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li>
              <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
              </form>
            </li>
            <li>
              <a href="http://www.newcredge.com/IT/www/html/tag/link/link-target-blank.html" target="_blank">お問い合わせ</a>
            </li>
            <li><a href="" target="_blank">よくある質問</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-8 col-md-7 col-sm-6">
            <h1>ベトナム</h1>
            <p class="lead">観光情報サイト</p>
          </div>
        </div>
        <div class="row" style="font:left">
          <div class="col-lg-3 col-md-3 col-sm-4">
            <div class="list-group table-of-contents">
              <a class="list-group-item" href="/vietnamguide">概要</a>
              <a class="list-group-item" href="/vietnamguide/local">地域</a>
              <a class="list-group-item" href="/vietnamguide/world">世界遺産</a>
              <a class="list-group-item" href="/vietnamguide">自然風景</a>
              <a class="list-group-item" href="/vietnamguide">食べ物</a>
              <a class="list-group-item" href="/vietnamguide/festival">お祭り</a>
              <a class="list-group-item" href="/vietnamguide">Q&A</a>
              <a class="list-group-item" href="/vietnamguide/question">ご質問・お問い合わせ</a>
              <a class="list-group-item" href="/vietnamguide">その他</a>
            </div>
          </div>
          <div class="col-lg-9">
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="all">
              <div class="bs-component">
                <div class="col-lg-6">
                <?php
                  $data_link = $link;
                  $overview = DB::table('Overview')->where('link',$link)->first();
                  echo '<h2>'.$overview->title.'</h2>';
                  echo '<p>'.$overview->text.'</p>';


                  //echo '</div>';
                  //echo '<div class="map-embed">';
                  //echo '<div id="map_canvas_'.$link.'">ここに地図が表示されます</div>';
                  //echo '</div>';
                  //echo '<script type="text/javascript" src="{{{asset('js/map.js')}}}"></script>'

                  $string      = "westen_north";
                  //$string = array("hoge" => "fuga");

              ?>

            </div>

              <div class="map-embed">
                <div id="map_canvas_all">ここに地図が表示されます</div>
              </div>


            <script type="text/javascript" src="{{{asset('js/map.js')}}}"></script>
            <script>
                var array = <?php echo json_encode($link, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
                console.log(array); // Object { hoge: "fuga" }
                initialize(array);
            </script>


            </div>
            </div>
          </div>
        </div>
        </div>
      </div>

        <footer>
          <div class="row">
            <div class="col-lg-12">
              <ul class="list-unstyled">
                <li class="pull-right"><a href="#top">Back to top</a></li>
              </ul>
              <p>Made by CuongCeopro. Contact him at <a href="mailto:cuongceopro@gmail.com">cuongceopro@gmail.com</a>.
              </p>
              <p>Yokohama National University.</p>
            </div>
          </div>
        </footer>
    </div>

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="{{{asset('js/bootstrap.min.js')}}}"></script>
    <script src="{{{asset('js/custom.js')}}}"></script>
    @yield('addJs')
    <!--
    <script src="{{{asset('js/map.js')}}}"></script>
  -->
  </body>
</html>
