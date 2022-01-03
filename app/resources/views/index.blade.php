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
<div class="container lw-contents-block mb60">
  <div class="row">
    <div class="col-sm-6">
      <h2>Document</h2>
      <ul>
        <li><a href="https://github.com/roughlang/lwbase" target="_blank">https://github.com/roughlang/lwbase</a></li>
        <li><a href="http://localhost:8000/ac/?feed=rss2" target="_blank">http://localhost:8000/ac/?feed=rss2</a></li>
      </ul>  
    </div>
    <div class="col-sm-6">
      
      
      <h1>Hello!!</h1>
      <div id="app">@{{ message }}</div>
      <script type="text/javascript" src="/assets/js/vue/vue.js"></script>
      <script>
        var app = new Vue({
          el: '#app',
          data: {
            message: 'Hello Vue!'
          }
        })
      </script>


      <div id="list">
        <ul v-for="(row,index) in tests" :key="row.title">
            <li>@{{row.title}}(@{{index}})- @{{row.content}}</li>
            <ul v-for="(image,index) in row.images">
              <li>@{{image}}</li>
            </ul>
        </ul>
      </div>
      <script>
          var list = new Vue({
          el: '#list',
          data: {
            tests: [
              {title:'foo',content:'aaaaa',images:['jpg1-1','jpg1-2','jpg1-3']},
              {title:'bar',content:'bbbbb',images:['png1-1','png1-2','png1-3']},
              {title:'baz',content:'ccccc',images:['gif1-1','gif1-2','gif1-3']},
            ]
          }
        })
      </script>
    </div>
  </div>
</div>
@endsection