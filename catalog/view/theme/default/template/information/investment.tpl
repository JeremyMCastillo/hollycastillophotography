<?php echo $header; ?>

<header class="page-header bigHeader image-6 textLight">
        <div class="bgMask opacity-7"></div>
        <div class="container">
                <div class="row">
                        <div class="col-sm-8 col-sm-offset-2" >
                                <section class="owl-carousel nekoDataOwl" data-neko_items="1" data-neko_singleitem="true" data-neko_pagination="true" data-neko_transitionstyle="backSlide">
                                        <article class="text-center">
                                                <blockquote class="text-center">
                                                        Holly was amazing to work with. She made us feel so comfortable and captured incredible moments for our family. We did a lifestyle shoot for my baby's first birthday and her photos are the best family photos we have ever had. We cannot recommend Holly enough for lifestyle, cake smash, birthdays, really anything you could need. Thank you thank you thank you Holly!!!
                                                </blockquote>
                                             <span><strong>Melissa Pepper Goble</strong></span>
                                        </article>
                                        <article class="text-center">
                                                <blockquote class="text-center">
                                                        Holly did such a great job taking pictures of my one year old's cake smash. She was patient and did a great job getting great pictures of him. She was so creative and fun!
                                                </blockquote>
                                             <span><strong>Rachel Sorensen</strong></span>
                                        </article>
                                        <article class="text-center">
                                                <blockquote class="text-center">
                                                        Holly was awesome! She made my girls and I very comfortable. Her vision is beautiful and I loved every picture she took. Thanks Holly!
                                                </blockquote>
                                             <span><strong>Stacy Marthens Stevens</strong></span>
                                        </article>
                                        <article class="text-center">
                                                <blockquote class="text-center">
                                                        I have used Holly twice now and she is such a pleasure to work with. Once for family portraits and then again as an event photographer. She has a wonderful eye for unique shots and captured exactly what I was looking for. Beyond the sessions, she does great and quick post production. I had my edited photos within a week or two. Overall, a wonderful photographer with great communication. Thank you, Holly        
                                                </blockquote>
                                                <span><strong>Michele Kaminski Mann</strong></span>
                                        </article>
                                        <article class="text-center">
                                                <blockquote class="text-center">
                                                        Holly is amazing! My son is very shy and often uncooperative when it comes to picture taking for strangers but she definitely made him feel comfortable I couldn't be happier with the way they turned out! Thank you again soooo much for capturing this milestone! I would recommend you to everyone and I'll definitely hire you again!
                                                </blockquote>
                                                <span><strong>Ashlyn Alvarez</strong></span>
                                        </article>
                                        <article class="text-center">
                                                <blockquote class="text-center">
                                                        She has so much patience and was awesome with my 3 year old and actually got her to cooperate!       
                                                </blockquote>
                                                <span><strong>Lauren Dunbar</strong></span>
                                        </article>
                                </section>
                        </div>
                </div>
        </div>
</header>

<!-- Content -->
<main id="content">
    <header class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>Investment</h1>
                </div>
                <div class="col-sm-6 hidden-xs">
                    <ul id="navTrail">
                        <li><a href="index.html">Home</a></li>
                        <li id="navTrailLast">Investment</li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!-- intro -->

    <div class="container mt30 pb30">
        <div class="row">
		<?php foreach($rates as $rate) { ?>
		<div class="col-sm-12 col-md-6 col-lg-3">
				<div class="pricingBloc"> <img src="image/<?php echo $rate['image']; ?>" />
				   <h2><?php echo $rate['name']; ?></h2>
				   <h3>$<?php echo (int)$rate['price']; ?><span><?php echo $rate['meta_title']; ?></span></h3>
				   <p class="sign"> <a class="btn btn-lg btn-block" href="<?php echo $contact_link; ?>">
						   Contact
					   </a> </p>
				<?php echo html_entity_decode($rate['description']); ?>
			   </div>
		   </div>
		<?php } ?>
        </div>
    </div>
    <!-- / intro -->
</main>
<!-- / content -->
<?php echo $footer; ?>