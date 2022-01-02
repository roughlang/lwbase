@extends('layouts.app')

@section('title', '利用規約')

@section('top_banner')
<div class="big-banner p-3 p-sm-5 mb-4 bg-img">
	<div class="container">
		<h1 class="display-4">laravel8 + wordpress</h1>
		<p class="lead">Wordpress in Laravel8  and common assets for both.</p>
	</div>
</div>
@endsection

@section('content_block')
<div class="container lw-contents-block">
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
@endsection