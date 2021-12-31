<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				<img src="/assets/img/item/search.svg" width="24" height="24">
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
<div class="container mt-2">
  <h1>ブランド</h1>
  <p>ココにサイトの文章が入ります。</p>
</div>

<footer class="footer hr">
	<div class="copy-right text-align-center mt20 mb20">
		<p class="text-center">© 2021 Roughlang, INC. All Rights Reserved</p>
	</div>
</footer>
</body>
</html>





