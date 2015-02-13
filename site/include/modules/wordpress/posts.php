<?php
require($_SERVER['DOCUMENT_ROOT'] . '/blogg/wp-load.php');
$args = array(
			// 'cat' => 3, // Only source posts from a specific category
			   'posts_per_page' => 8 // Specify how many posts you'd like to display
);

$latest_posts = new WP_Query($args);

if ($latest_posts->have_posts()) 
{
	while ($latest_posts->have_posts()) // has_post_thumbnail() the_post_thumbnail(); // Posted on <?php the_time('l jS F, Y')
	{
		$latest_posts->the_post(); ?>
		<div class="blog-tn">
			<h2><?php the_title(); ?></h2>
			<div>
				<p><?php the_excerpt(); ?></p>
			</div>
			<a href="<?php the_permalink(); ?>" target="_blank"><button class="btn btn-blue">Leer más</button></a>
		</div>	
<?php 
	}
}

wp_reset_postdata();
?>

