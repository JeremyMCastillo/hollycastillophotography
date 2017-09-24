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
  <div class="cat-photos col-lg-12">
    <?php $first = true; ?>
    <?php foreach($reviews as $review) { ?>
          <img class="<?php echo $first ? 'active' : ''; ?>" src="<?php echo HTTPS_SERVER . 'image/' . $review['image']; ?>" />
          <?php $first = false; ?>
    <?php } ?>
  </div>
  <div class="col-xs-12 review-block">
    <div class="row">
        <?php $first = true; ?>
        <?php foreach($reviews as $review) { ?>
          <div class="col-xs-12 review-block-item <?php echo $first ? 'active' : ''; ?>">
            <div class="row">
              <div class="col-xs-12"><h1 class="accent"><?php echo $review['author']; ?></h1></div>
            </div>
            <div class="row">
              <div class="col-xs-12"><section><?php echo $review['text']; ?></section></div>
            </div>
        </div>
        <?php $first = false; ?>
        <?php } ?>
    </div>
  </div>
</div>
<div id="instagram-feed-title" class="row">
  <div class="col-xs-12 text-center">
    <h2>Follow Me On Instagram!</h2>
  </div>
</div>
<div class="row" id="instagram-feed">
  <ul class="carousel">
  </ul>
</div>
<div id="badge-showcase">
    <div class="row">
        <div class="col-xs-6 col-sm-4 col-lg-2 col-xs-offset-3">
            <a target="_blank" href="https://www.loveandlavender.com/2017/04/styled-wedding-vintage-romantic-tea-party-shoot/">
                <img src="image/pages/common/loveandlavender.png" />
            </a>
        </div>
        <div class="col-xs-6 col-sm-4 col-lg-2">
            <a target="_blank" href="https://www.borrowedandblue.com/santa-barbara/wedding-photographers/holly-castillo-photography">
                <img src="image/pages/common/borrowedandblue.png" />
            </a>
        </div>
        <div class="col-xs-12 col-sm-6 col-lg-2">
            <a target="_blank" href="http://www.intimateweddings.com/blog/woodland-fairy-tale-elopement-styled-shoot/">
                <img src="image/pages/common/intimateweddings.png" />
            </a>
        </div>
    </div>
</div>
<script type="text/javascript">
  $(function(){
    $.ajax({
      url: '<?php echo $instagram_endpoint; ?>',
      dataType: 'json',
      success: function(json){
        console.log(json);
        for(var i in json){
          var html = "<li>";
          html += "<img src='" + json[i]['images']['low_resolution']['url'] + "' />";
          html += "</li>";
          $("#instagram-feed ul").append(html);
        }
      }
    });
  });
</script>
<?php echo $footer; ?>
