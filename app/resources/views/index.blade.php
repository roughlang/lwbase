<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="canonical" href="{ env('APP_URL') }">
  <meta name="msapplication-square70x70logo" content="/site-tile-70x70.png">
  <meta name="msapplication-square150x150logo" content="/site-tile-150x150.png">
  <meta name="msapplication-wide310x150logo" content="/site-tile-310x150.png">
  <meta name="msapplication-square310x310logo" content="/site-tile-310x310.png">
  <meta name="msapplication-TileColor" content="#0078d7">
  <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="/favicon.ico">
  <link rel="icon" type="image/vnd.microsoft.icon" href="/assets/img/icon/favicon/favicon.ico">
  <link rel="apple-touch-icon" sizes="57x57" href="/assets/img/icon/favicon/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/assets/img/icon/favicon/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/assets/img/icon/favicon/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/assets/img/icon/favicon/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/assets/img/icon/favicon/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/assets/img/icon/favicon/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/assets/img/icon/favicon/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/assets/img/icon/favicon/apple-touch-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/icon/favicon/apple-touch-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="36x36" href="/assets/img/icon/favicon/android-chrome-36x36.png">
  <link rel="icon" type="image/png" sizes="48x48" href="/assets/img/icon/favicon/android-chrome-48x48.png">
  <link rel="icon" type="image/png" sizes="72x72" href="/assets/img/icon/favicon/android-chrome-72x72.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/assets/img/icon/favicon/android-chrome-96x96.png">
  <link rel="icon" type="image/png" sizes="128x128" href="/assets/img/icon/favicon/android-chrome-128x128.png">
  <link rel="icon" type="image/png" sizes="144x144" href="/assets/img/icon/favicon/android-chrome-144x144.png">
  <link rel="icon" type="image/png" sizes="152x152" href="/assets/img/icon/favicon/android-chrome-152x152.png">
  <link rel="icon" type="image/png" sizes="192x192" href="/assets/img/icon/favicon/android-chrome-192x192.png">
  <link rel="icon" type="image/png" sizes="256x256" href="/assets/img/icon/favicon/android-chrome-256x256.png">
  <link rel="icon" type="image/png" sizes="384x384" href="/assets/img/icon/favicon/android-chrome-384x384.png">
  <link rel="icon" type="image/png" sizes="512x512" href="/assets/img/icon/favicon/android-chrome-512x512.png">
  <link rel="icon" type="image/png" sizes="36x36" href="/assets/img/icon/favicon/icon-36x36.png">
  <link rel="icon" type="image/png" sizes="48x48" href="/assets/img/icon/favicon/icon-48x48.png">
  <link rel="icon" type="image/png" sizes="72x72" href="/assets/img/icon/favicon/icon-72x72.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/assets/img/icon/favicon/icon-96x96.png">
  <link rel="icon" type="image/png" sizes="128x128" href="/assets/img/icon/favicon/icon-128x128.png">
  <link rel="icon" type="image/png" sizes="144x144" href="/assets/img/icon/favicon/icon-144x144.png">
  <link rel="icon" type="image/png" sizes="152x152" href="/assets/img/icon/favicon/icon-152x152.png">
  <link rel="icon" type="image/png" sizes="160x160" href="/assets/img/icon/favicon/icon-160x160.png">
  <link rel="icon" type="image/png" sizes="192x192" href="/assets/img/icon/favicon/icon-192x192.png">
  <link rel="icon" type="image/png" sizes="196x196" href="/assets/img/icon/favicon/icon-196x196.png">
  <link rel="icon" type="image/png" sizes="256x256" href="/assets/img/icon/favicon/icon-256x256.png">
  <link rel="icon" type="image/png" sizes="384x384" href="/assets/img/icon/favicon/icon-384x384.png">
  <link rel="icon" type="image/png" sizes="512x512" href="/assets/img/icon/favicon/icon-512x512.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/icon/favicon/icon-16x16.png">
  <link rel="icon" type="image/png" sizes="24x24" href="/assets/img/icon/favicon/icon-24x24.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/icon/favicon/icon-32x32.png">
  <link rel="manifest" href="/assets/img/icon/favicon/manifest.json">
	<title>lwbase</title>
	<link rel="stylesheet" href="/assets/css/_main.css" media="screen">
	<script type="text/javascript" src="/assets/bootstrap5/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">lwbase</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
				<li class="nav-item">
          <a class="nav-link active" href="#">Link</a>
        </li>
				@if (Route::has('login'))
					@auth
					<li class="nav-item"><a class="nav-link active" href="{{ url('/home') }}">Home</a></li>
					@else
					<li class="nav-item"><a class="nav-link active" href="{{ route('login') }}">Log in</a></li>
						@if (Route::has('register'))
						<li class="nav-item"><a class="nav-link active" href="{{ route('register') }}">Register</a></li>
						@endif
					@endauth
				@endif
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Link
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn" type="submit">
				<img src="/assets/img/item/search.svg" width="24" height="24" alt="search">
				</button>
      </form>
    </div>
  </div>
</nav>

<div class="big-banner p-3 p-sm-5 mb-4 bg-img">
  <div class="container">
    <h1 class="display-4">laravel8 + wordpress</h1>
    <p class="lead">Wordpress in Laravel8  and common assets for both.</p>
  </div>
</div>
<!-- <div class="container mt-2">
  <h1>ブランド</h1>
  <p>ココにサイトの文章が入ります。</p>
</div> -->

<div class="container">
  <div class="row">
    <div class="col-sm-6">
      <h2>Document</h2>
      <ul>
        <li><a href="https://github.com/roughlang/lwbase" target="_blank">https://github.com/roughlang/lwbase</a></li>
        <li><a href="http://localhost:8000/ac/?feed=rss2" target="_blank">http://localhost:8000/ac/?feed=rss2</a></li>
      </ul>  
    </div>
    <div class="col-sm-6">
      Column
    </div>
  </div>
</div>

<footer class="footer hr">
	<div class="copy-right text-align-center mt20 mb20">
		<p class="text-center">© 2021 Roughlang, INC. All Rights Reserved</p>
	</div>
</footer>
@if(env('APP_ENV') == 'local' || env('APP_ENV') == 'develop')
<script type="text/javascript" src="/assets/js/vue/vue.js"></script>
@else
<script type="text/javascript" src="/assets/js/vue/vue.min.js"></script>
@endif
</body>
</html>





