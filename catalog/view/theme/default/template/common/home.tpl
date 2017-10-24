<?php echo $header; ?>
<!-- slider -->
<div id="home-slider-wrap">
    <ul class="wait-for-load" style="height:1280px; display: none;">
        <li style="height:1280px"><img src="image/pages/common/wedding.jpg" /></li>
        <li style="height:1280px"><img src="image/pages/common/armswing.jpg" /></li>
        <li style="height:1280px"><img src="image/pages/common/barskid.jpg" /></li>
        <li style="height:1280px"><img src="image/pages/common/girls.jpg" /></li>
        <li style="height:1280px"><img src="image/pages/common/maxholly.jpg" /></li>
    </ul>
</div>
<!-- / slider -->
<div id="reviews-title" class="row">
  <div class="col-xs-12 text-center">
    <h2>Client Testimonials</h2>
  </div>
</div>
<div class="row text-center" id="reviews">
  <span id="reviews-scroll-left"><i class="icon-angle-left"></i></span>
  <div class="cat-photos col-xs-12 col-sm-8 col-sm-offset-2 col-md-12 col-md-offset-0">
    <?php $index = 0; ?>
    <?php foreach($reviews as $review) { ?>
          <img data-review="<?php echo $index; ?>" class="<?php echo ($index == 0 ? 'active ' : ' '); ?>" src="<?php echo HTTPS_SERVER . 'image/' . $review['image']; ?>" />
          <?php $index++; ?>
    <?php } ?>
  </div>
  <div class="col-xs-12 review-block">
    <div class="row">
        <?php $index = 0; ?>
        <?php foreach($reviews as $review) { ?>
          <div data-review="<?php echo $index; ?>" class="col-xs-12 review-block-item <?php echo ($index == 0 ? 'active ' : ' '); ?>">
            <div class="row">
              <div class="col-xs-12"><h1 class="accent"><?php echo $review['author']; ?></h1></div>
            </div>
            <div class="row">
              <div class="col-xs-12"><section><?php echo $review['text']; ?></section></div>
            </div>
        </div>
        <?php $index++; ?>
        <?php } ?>
    </div>
  </div>
  <span id="reviews-scroll-right"><i class="icon-angle-right"></i></span>
</div>
<div id="instagram-feed-title" class="row">
  <div class="col-xs-12 text-center">
    <h2>Follow Me On <a href="https://www.instagram.com/hollycastillophotography/">Instagram!</a></h2>
  </div>
</div>
<div class="row text-center" id="instagram-feed">
  <span id="scroll-left"><i class="icon-angle-left"></i></span>
  <span class="carousel-wrap">
    <ul class="carousel">
    </ul>
  </span>
  <span id="scroll-right"><i class="icon-angle-right"></i></span>
</div>
<script type="text/javascript">
  $(function(){
    $.ajax({
      url: '<?php echo $instagram_endpoint; ?>',
      dataType: 'json',
      success: function(json){
        if(!json){
          $("#instagram-feed, #instagram-feed-title").remove();
        }
        console.log(json);
        for(var i in json){
          var html = "<li>";
          html += "<a target='_blank' href='" + json[i]['link'] + "'><img src='" + json[i]['images']['low_resolution']['url'] + "' /></a>";
          html += "</li>";
          $("#instagram-feed ul").append(html);
        }
      }
    });
  });
</script>
<?php echo $footer; ?>
