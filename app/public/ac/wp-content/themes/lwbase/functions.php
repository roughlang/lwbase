<?php
function twpp_setup_theme() {
    add_theme_support( 'post-thumbnails' );
}
add_action( 'after_setup_theme', 'twpp_setup_theme' );

/**
 * Wordpress rest api
 * 
 * + add icatch url
 * - delete revisions
 */

 /* add icatch url */
add_action( 'rest_api_init', 'api_add_fields' );
function api_add_fields() {
  register_rest_field( 'post',
    'thumbnail_url',
     array(
      'get_callback'    => 'register_fields',
      'update_callback' => null,
      'schema'          => null,
    )
  );
}
function register_fields( $post, $name ) {
	/* icatch size [thumbnail | full | medium | large] */
  return get_the_post_thumbnail_url($post['id'], 'full');
}

/**
 * add category name
 */
add_action( 'rest_api_init', 'register_rest_category_name'); 

if ( ! function_exists( 'register_rest_category_name' )) {
  function register_rest_category_name() {
    register_rest_field( 'post', 'category_name',
    array(
      'get_callback' => 'get_category_name'
    ));
  }
  function get_category_name( $object ) {
    $category = get_the_category($object[ 'id' ]);
    return $category[0]->cat_name;
  }
}