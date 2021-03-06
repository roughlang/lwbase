<?php
include(__DIR__."/include/common.php");
?>
<!DOCTYPE html>
<html lang="ja">
<?php include("include/header.php"); ?>
<body>
<div class="topbar"></div>
<?php include("include/nav.php"); ?>
	
	<div class="container lw-contents-block blog-contents-block mt60 mb60">
		<div class="row">
			<div class="col-md-9 blog">
				<h2 class="mb60">Blog document</h2>
				<div class="breadcrumb">
					<ul>
						<li class="parent"><a href="/">Home</a></li>
						<li><a href="<?php echo home_url(); ?>">Blog</a></li>
						<!-- <li class="parent"><a href="#">Category</a></li>
						<li><a href="#">Blog title</a></li> -->
					</ul>
				</div>
				<?php if(have_posts()): ?>
					<?php while(have_posts()): the_post(); ?>
						<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
						<div class="tags float-end">
							<?php the_tags('<ul><li>', '</li><li>', '</li></ul>'); ?>
						</div><br clear="both">
						<?php
						$content = get_the_content();
						$content = adjust_content_text($content);
						$content = mb_substr($content,0,200);
						echo "<p class='top-content'>";
						
						// if (!empty(the_post_thumbnail_url())) {
						// 	echo "<img src='".the_post_thumbnail_url()."' class='blog-icatch'>";
						// }
						$thumbnail = get_the_post_thumbnail_url();
						if (empty(get_the_post_thumbnail_url())) {
							// nothing
						} else {
							echo "<img src='".$thumbnail."' class='blog-icatch'>";
						}
						echo $content."..."."</p>";
						?>
						<div class="blog-meta mb30">
							
							<p class="datetime float-end"><?php the_time('Y.m.d'); ?></p>
							<?php the_category(); ?>
						</div>
					<?php endwhile; ?>
				<?php else: ?>
					<!-- 投稿データが取得できない場合の処理 -->
				<?php endif; ?>

				<?php
				the_posts_pagination(
					array(
						'mid_size'      => 2, // 現在ページの左右に表示するページ番号の数
						'prev_next'     => true, // 「前へ」「次へ」のリンクを表示する場合はtrue
						'prev_text'     => __( '&lt;'), // 「前へ」リンクのテキスト
						'next_text'     => __( '&gt;'), // 「次へ」リンクのテキスト
						'type'          => 'list', // 戻り値の指定 (plain/list)
					)
				); ?>
			</div>

			<div class="col-md-3 blog">
				<?php if ( is_active_sidebar('main-sidebar') ) : ?>
					<ul class="menu">
						<?php dynamic_sidebar('main-sidebar'); ?>
					</ul>
				<?php endif; ?>
			</div>
		</div>
	</div>

	<?php include("include/footer.php"); ?>
</body>
</html>





