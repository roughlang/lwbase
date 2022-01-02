<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="canonical" href="{{ env('APP_URL') }}">
	@include('include/favicon')
	<title>@yield('title') | {{ env('APP_NAME') }}</title>
	<link rel="stylesheet" href="/assets/css/_main.css" media="screen">
	<script type="text/javascript" src="/assets/bootstrap5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="topbar"></div>
@include('include/nav')
@yield('top_banner')
@yield('content_block')

@include('include/footer')
</body>
</html>





