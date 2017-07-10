<?php

echo $header; ?>
<div class="container">
    <!-- ======================================= content ======================================= -->
    <main id="content">
        <header class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-offset-6 col-sm-6 hidden-xs">
                        <ul id="navTrail">
                            <?php foreach($breadcrumbs as $breadcrumb){ ?>
                                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <!-- content -->
        <div class="container mt30 pb30">
            <div class="row">
                <div class="col-md-8">
                    
                    <!-- Blog Posts BEGIN -->
                    <?php foreach($posts as $post) { ?>
                        <article class="post clearfix">
                            <div class="postPic">
                                <div class="imgBorder mb15">
                                    <a href="<?php echo $post['href']; ?>"><img src="<?php echo $post['image']; ?>" alt="" class="img-responsive" /></a>
                                </div>
                            </div>
                            <div class="row">
                                <section class="col-sm-12 col-xs-12">
                                    <h2> <a href="<?php echo $post['href']; ?>"><?php echo $post['title']; ?></a> </h2>
                                        <?php 
                                            header('Content Type: text/plain');
                                            echo html_entity_decode($post['description']);  
                                        ?>
                                    <ul class="entry-meta">
                                        <li class="entry-date"><a href="#"><i class="icon-calendar"></i>&nbsp;<?php echo $post['date_added']; ?></a></li>
                                        <li class="entry-category"><a href="#"><i class="icon-th-list"></i>&nbsp;<?php echo $post['meta_keyword']; ?></a></li>
                                        <!-- <li class="entry-comments"><a href="#"><i class="icon-comment-1"></i>&nbsp;12 comments</a></li>j -->
                                    </ul>
                                </section>
                            </div>
                        </article>
                    <hr class="lineLines mb40 mt30">
                    <?php } ?>
                    <!-- Blog Posts END -->

            </div>
            <!-- / row -->
                            <!-- sidebar -->
                <aside class="col-md-4">
                    <section class="widget search clearfix">
                        <form class="form-inline" role="form">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control lg" placeholder="Search…"> <span class="input-group-btn">
                                    <button type="submit" class="btn btn-sm">Submit</button>
                                </span> </div>
                        </form>
                    </section>
                    <section class="widget">
                        <h3>Categories</h3>
                        <ul class="list-unstyled iconList">
                            <?php foreach($tags as $tag){ ?>
                                <li><a href="#"><?php echo $tag['title']; ?></a></li>
                            <?php } ?>
                        </ul>
                    </section>
                </aside>
                <!-- / sidebar -->
        </div>
        <!-- / container -->
    </main>
    <!-- / content -->

</div>
<script type="text/javascript"><!--
$(document).ready(function () {
        $('.popup_imgs').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
//--></script>
<?php echo $footer; ?>
