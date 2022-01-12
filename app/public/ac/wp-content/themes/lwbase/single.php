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
						<li class="parent"><a href="<?php echo home_url(); ?>">Blog</a></li>
						<?php
						$category = get_the_category();
						$cat_id   = $category[0]->cat_ID;
						$cat_name = $category[0]->cat_name;
						$cat_slug = $category[0]->category_nicename;
						$cat_link = get_category_link($category[0]->term_id);
						?>
						<li class="parent"><a href="<?php echo $cat_link; ?>"><?php echo $cat_name; ?></a></li>
						<?php
						$title = get_the_title();
						$title = mb_substr($title,0,30);
						?>
						<li><a href="<?php the_permalink(); ?>"><?php echo $title; ?></a></li>
					</ul>
				</div>
				<?php if(have_posts()): ?>
					<?php while(have_posts()): the_post(); ?>
						<h4><?php the_title(); ?></h4>
						<div class="tags float-end">
							<?php the_tags('<ul><li>', '</li><li>', '</li></ul>'); ?>
						</div><br clear="both">
						<?php
						$content = get_the_content();
						// $content = adjust_content_text($content);
						// $content = mb_substr($content,0,200);
						echo "<div class='contents mt30'>".$content."</div>";
						?>
						<br clear="both">

						<div class="thubnail mt50 mb80">
							photo thumbnail
							<?php
							/**
							 * 
							 */
							$id = get_the_ID();
							echo $id."<br>\n";
							$attachments = get_children(array(
								'post_parent'    => $id, // この投稿のID
								'post_status'    => 'inherit', // 公開ステータス(post_parentに準じる)
								'post_type'      => 'attachment', //投稿タイプ(添付ファイル)
								'post_mime_type' => 'image', // MIMEタイプ(画像)
								'orderby'        => 'menu_order', // ソート(任意)
								'order'          => 'ASC' // 並び順(昇順)
							));
							// var_dump($attachments);
							foreach ($attachments as $key=>$item) {
								echo $key."<br>\n";
								// var_dump($item->ID);
								// var_dump($item->guid);
								echo "<img src='".$item->guid."' style='width: 100px;'>";

							}
							?>
						</div>

						<div class="blog-meta mb30 mt50">
							<p class="datetime float-end"><?php the_time('Y.m.d'); ?></p>
							<?php the_category(); ?>
						</div>
					<?php endwhile; ?>
				<?php else: ?>
					<!-- 投稿データが取得できない場合の処理 -->
				<?php endif; ?>

				<div class="page-navi-arrow mt30">
					<?php if (get_previous_post()):?>
					<?php previous_post_link('< %link', 'Previous'); ?>
					<?php endif; ?>

					<?php if (get_next_post()):?>
					<?php next_post_link('%link >', 'Next'); ?>
					<?php endif; ?>
				</div>
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





