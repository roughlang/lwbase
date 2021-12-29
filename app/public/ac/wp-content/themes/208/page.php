<?php include("inc/html_header.php"); ?>
<body>

<?php include("inc/nav.php"); ?>

<div class="container page">
  <div class="row">
    <div class="col-md-8 col-lg-9 mt60 page-contents">
      <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="page-title mb40"><?php the_title(); ?></div>
        <div class="page-text">
      <?php the_content(); ?>
      <?php endwhile; else: ?>
        <p>作成されたページがありません。</p>
      <?php endif; ?>
        </div>
    </div>
    <div class="col-md-2 col-lg-3 mt60 sidebar">
      <h2 class="sidebar-title">sidebar</h2>
      <div class="">
      sidebar
      </div>
    </div>
  </div>
</div>

<?php include("inc/footer.php"); ?>