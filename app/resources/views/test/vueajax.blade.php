@extends('layouts.app')

@section('title', 'vue.js + ajax')


@section('content_block')
<div class="container lw-contents-block mt60 mb60">
  <div class="row">
    <div class="col-md-9">
      <h3>Ajax(axios) GET sample</h3>
      <p>axiosのgetメソッドでAPIのjsonを読み込んでリスト表示します。</p>
      <div id="vueajax1">
        <ol>
          <li v-for="page in blog">@{{ page.title }}</li>
        </ol>
      </div>
      <script>
        const vueajax1 = new Vue({
          el: '#vueajax1',
          data: {
            blog: []
          },
          mounted: function() {
            const self = this;
            axios
            .get('http://localhost:8000/ac/')
            .then(function(response) {
              console.log(response);
                self.blog = response.data;
            })
            .catch(function(error) {
                console.log('取得に失敗しました。', error);
            })
          }
        });
      </script>
    </div>
    <div class="col-md-3">
      bar
    </div>
  </div>
</div>
@endsection