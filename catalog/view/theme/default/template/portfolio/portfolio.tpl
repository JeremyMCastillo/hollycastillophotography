<?php echo $header; ?>
<div class="row">
    <div id="portfolio-slider-wrap">
		<?php foreach($photos as $photo) { ?>
			<a onclick="loadImage(<?php echo $photo['id']; ?>)"><div style="height: <?php echo $photo['height']; ?>px; width: <?php echo $photo['width']; ?>px;" class="item"><img src="<?php echo $photo['image']; ?>" /></div></a>
		<?php } ?>
    </div>
</div>
<?php echo $footer; ?>