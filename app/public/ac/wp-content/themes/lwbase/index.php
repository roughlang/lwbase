<?php
/**
 * Return json as API
 */
if (have_posts()) {
    $records = array();
    while (have_posts()) {
        the_post();
  
        $records[] = array(
            'id'        => get_the_ID(),
            'title'     => get_the_title(),
            'content'   => apply_filters('the_content', preg_replace("/\n/","",get_the_content())),
            'permalink' => get_permalink(),
            'publish_date'  => get_the_date('Y-m-d H:i:s'),
            'modified_date' => get_the_modified_date('Y-m-d H:i:s'),
            'category'      => get_the_category(),
            'tag'           => get_the_tags(),
            'icatch'        => get_the_post_thumbnail_url(),
            'images'        => wp_get_attachment_image_src( get_the_ID(),'full',true ),
            'slug'          => $post->post_name,
        );
    }
    
}

if (WP_ENV == 'local' || WP_ENV == 'dev') {
    echo json_encode($records, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
} else {
    echo json_encode($records, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
}