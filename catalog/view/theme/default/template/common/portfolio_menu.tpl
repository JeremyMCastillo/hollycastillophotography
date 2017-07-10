<div id="portfolio-menu" class="row">
    <div class="col-sm-12">
        <div class="row">
            <div class="col-sm-6 table">
                <ul id="portfolio-menu" class="list-unstyled">
                    <?php foreach($categories as $category){ ?>
                        <li><a><?php echo $category["name"]; ?></a>
							<?php if(count($category["children"]) > 0) { ?>
								<ul class="inner-menu">
									<?php foreach($category["children"] as $child){ ?>
										<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
									<?php } ?>
								</ul>
							<?php } ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            <div class="col-sm-6"></div>
        </div>
    </div>
</div>