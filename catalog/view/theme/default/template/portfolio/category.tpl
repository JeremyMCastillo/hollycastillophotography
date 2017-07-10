<?php echo $header; ?>
<section class="pt30 pb30">
    <div class="container clearfix">
        <div class="portfolio-items  clearfix row">
            <?php foreach($categories as $category) { ?>
                <article class="col-sm-3 isotopeItem">
                    <div class="pinBox">
                        <figure>
                            <a href="<?php echo $category['href']; ?>"><img alt="<?php echo $category['name']; ?>" src="<?php echo 'image/' . $category['image']; ?>" class="img-responsive"></a>
                        </figure>
                        <section class="boxContent">
                            <a href="<?php echo $category['href']; ?>"><h3><?php echo $category['name']; ?></h3></a>
                        </section>
                    </div>
                </article>
            <?php } ?>
        </div>
    </div>
</section>
<?php echo $footer; ?>