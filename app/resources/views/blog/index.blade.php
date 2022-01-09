@extends('layouts.app')

@section('title', 'Blog top')

{{--
api: https://lwbase.roughlang.com/ac/wp-json/wp/v2/posts
initial: 最新20件 ページネーション
search: 別フォーム作成（Blog用）
category / tagのソートと検索
--}}
@section('content_block')
<div class="container lw-contents-block blog-contents-block mt60 mb60">
  <div class="row">
    <div class="col-md-9">
      
      <h2 class="mb20" id="blog_top">Blog @{{message}}</h2>
      <script>
        var app = new Vue({
          el: '#blog_top',
          data: {
            message: 'Hello Vue!'
          }
        })
      </script>
      <div class="blog-search-form">
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn" type="submit">
            <img src="/assets/img/item/search.svg" width="24" height="24" alt="search">
          </button>
        </form>
      </div>

      <h3 class="mt30">Latest<h3>
      <div class="blog-latest-blocck">
        <ul id="blog" class="blog">

          <li v-for="page in blog">
            <h4><a v-bind:href="'#' + page.id" class="blog-title-link">@{{ page.title.rendered }}</a></h4>
            <div class="excerpt" v-html="page.excerpt.rendered">
              @{{ page.excerpt.rendered }}
            </div>
            <div class="meta">
              <div class="categories">
                <ul v-for="category in page.category_info">
                  <li><a v-bind:href="'#' + category.cat_ID">@{{ category.cat_name }}</a></li>
                </ul>   
              </div>
              <div class="tags">
                <ul v-for="tag in page.tag_info">
                  <li ><a v-bind:href="'#' + tag.term_id">@{{ tag.name }}</a></li>
                </ul>
              </div>
              <div class="date">@{{ page.date }}</div>
            </div>
          </li>

        </ul>
      </div>
      <script>
      /* Blogの表示 */
      const blog = new Vue({
        el: '#blog',
        data: {
          blog: []
        },
        mounted: function() {
          const self = this;
          /* posts */
          axios.get( 'https://lwbase.roughlang.com/ac/wp-json/wp/v2/posts')
          .then(function(response) {
            // console.log(response.data);
            self.blog = response.data;
          }).catch(function(){
            console.log('Failed to get blog from wp-rest-api.', error);
          });
        }
      });
      </script>


      <div class="blog-categories">

      </div>
    </div>
    <div class="col-md-3 blog-sidebar">
      @include('include/sidebar') 
    </div>
  </div>
</div>
@endsection