<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
	  <div class="row">
		  <div class="col-lg-6 col-lg-offset-3 col-md-12">
			  <p>
				  Hello!<br/> Thank you for your interest in becoming a 2018 Senior Representative with Holly Castillo Photography. I'm very excited about this opportunity and I hope you are too! More information is listed below, please read it over carefully to decide if this arrangement is something you are willing and able to do before filling out the application.
			  </p>
			  <p>
I will be in contact after your application is submitted to confirm if you are chosen to be a Senior Representative for the 2018 graduating year. Spots are limited to a maximum of 5 girls and 2 boys.  
			  </p>

			  <h4>Options</h4>
			  
			  <h5>Two Session Contract - $400 (A $700 Value)</h5>
			<ul>
				<li>Two 1 Hour Long Portrait Sessions (First In Autumn 2017, Second in Spring 2018)</li>
				<li>Two Outfits Per Session</li>
				<li>15-20 Digital Web Sized Files</li>
				<li>2 8x10 Prints Per Session</li>
				<li>2 5x7 Prints Per Session</li>
				<li>25 Graduation Announcement Cards</li>
				<li>Memory Photobook at the end of the year</li>
			</ul>

			  <h5>Three Session Contract - $600 (A $1000 Value)</h5>
			<ul>
				<li>Three 1 Hour Long Portrait Sessions (First in Autumn 2017, Second in Winter 2018, Third in Spring 2018</li>
				<li>Two Outfits Per Session</li>
				<li>15-20 Digital Web Sized Files</li>
				<li>2 8x10 Prints Per Session</li>
				<li>2 5x7 Prints Per Session</li>
				<li>25 Graduation Announcement Cards</li>
				<li>Memory Photobook at the end of the year</li>
			</ul>

			  <p>
Both sessions may be broken into payment plans, payable to $200 per session.
			  </p>


			  <h5>Your Job</h5>
			  <p>
To qualify for the discount you will become a social media "representative", which in simple terms means posting your photos to social media with proper credit to Holly Castillo Photography, to encourage friends and peers to get their senior photos taken with me! And since you're probably posting to social media anyway, it's not too much different from what you normally do! I do ask that at least one post be made every 2-3 weeks, but they can be on different platforms, you don't have to post to all platforms at once. 
			  </p>




			  <h5>An example of a posting schedule would be something like this:</h5>
			  <p>
August 15- Facebook Post, Credit and Tag to Holly Castillo Photography
<br /><br />
September 7- Instagram Post, Credit and Tag to @hollycastillophotography
<br /><br />
October 1- Snapchat Post, Small note mentioning Holly Castillo Photography, no tagging available
<br /><br />
You don't have to do it exactly like this, this is just an example of how it could go! If you are more active on Instagram and want to do all your posts there, that's totally fine! You will have about 15-20 photos to cycle through posting, and then have a brand new session and photos to post from just a few months later! 
			  </p>

			  <p>
Sound Good? If so please fill out the application below!
			  </p>
		  </div>
	  </div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <h3><?php echo $text_contact; ?></h3>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-parent-name"><?php echo $entry_parent_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="parent-name" id="input-parent-name" class="form-control" />
            </div>
          </div>
		  <div class="form-group required">
			  <label class="col-sm-2 control-label" for="input-contract-type"><?php echo $entry_contract_type; ?></label>
			  <div class="col-sm-10">
				<select style="height:44px;min-width:200px;" name="contract-type" id="input-contract-type">
					<option value="TWO SESSIONS">TWO SESSIONS</option>
					<option value="THREE SESSIONS">THREE SESSIONS</option>
				</select>
			  </div>
		  </div>
		  <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-high-school"><?php echo $entry_high_school; ?></label>
            <div class="col-sm-10">
              <input type="text" name="high-school" id="input-high-school" class="form-control" />
              <?php if ($error_high_school) { ?>
              <div class="text-danger"><?php echo $error_high_school; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-parent-email"><?php echo $entry_parent_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="parent-email" id="input-parent-email" class="form-control" />
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-facebook"><?php echo $entry_facebook ?></label>
            <div class="col-sm-10">
              <input type="text" name="facebook" id="input-facebook" class="form-control" />
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-instagram"><?php echo $entry_instagram; ?></label>
            <div class="col-sm-10">
              <input type="text" name="instagram" id="input-instagram" class="form-control" />
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-snapchat"><?php echo $entry_snapchat; ?></label>
            <div class="col-sm-10">
              <input type="text" name="snapchat" id="input-snapchat" class="form-control" />
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-other"><?php echo $entry_other; ?></label>
            <div class="col-sm-10">
              <input type="text" name="other" id="input-other" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-excited"><?php echo $entry_excited; ?></label>
            <div class="col-sm-10">
              <textarea name="excited" rows="10" id="input-excited" class="form-control"><?php echo $enquiry; ?></textarea>
            </div>
          </div>
          <?php if ($site_key) { ?>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                <?php if ($error_captcha) { ?>
                  <div class="text-danger"><?php echo $error_captcha; ?></div>
                <?php } ?>
              </div>
            </div>
          <?php } ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
