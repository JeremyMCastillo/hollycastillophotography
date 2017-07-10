<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>

  <!-- Basic Page Needs ALABAMA TEMPLATE HEAD BEGIN
        ================================================== -->
  <meta charset="utf-8">
  <title><?php echo $title; ?></title>
  <meta name="description" content="<?php echo $description; ?>">
  <meta name="author" content="Holly Castillo">
  <meta name="p:domain_verify" content="5c14e4bd52a86851107933ddffc7010c"/>
  <!-- Mobile Specific Metas
  ================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!-- CSS
  ================================================== -->

    <script src="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

  <!-- web font  -->
  <link href='http://fonts.googleapis.com/css?family=Roboto:100,300,400' rel='stylesheet' type='text/css'>
  <!-- Pop up-->
  <link rel="stylesheet" type="text/css" href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/plugins/magnific-popup/magnific-popup.css" />
  <!-- Owl carousel-->
  <link rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/plugins/owl.carousel/owl-carousel/owl.carousel.css">
  <link rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/plugins/owl.carousel/owl-carousel/owl.transitions.css">
  <link rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/plugins/owl.carousel/owl-carousel/owl.theme.css">
  <!-- nekoAnim-->
  <link rel="stylesheet" type="text/css" href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/plugins/appear/nekoAnim.css" />
  <!-- isotope -->
  <link type="text/css" rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/plugins/isotope/css/style.css">
  <!-- icon fonts -->
  <link type="text/css" rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/theme/default/stylesheet/font-icons/custom-icons/css/custom-icons.css">
  <!-- Font Awesome -->
  <link type="text/css" rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/theme/default/stylesheet/font-icons/custom-icons/css/font-awesome.css">
  <!-- Custom css -->
  <link type="text/css" rel="stylesheet" href="<?php echo HTTPS_SERVER; ?>catalog/view/theme/default/stylesheet/layout.css">
  <script type="text/javascript" src="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/custom.js"></script>
  <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->
  <script src="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/modernizr-2.6.1.min.js"></script>
  <!-- ALABAMA HEAD END -->

<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<!-- <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet"> -->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="<?php echo HTTPS_SERVER; ?>catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?> activateAppearAnimation">
<!-- Primary Page Layout ================================================== -->
<!-- globalWrapper -->
<div id="globalWrapper">

<!-- Header BEGIN -->
<header class="navbar-fixed-top">
    <!-- header -->
    <div id="mainHeader" role="banner">
        <div>
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <!-- responsive navigation -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Logo -->
                    <a class="navbar-brand" href="<?php echo HTTPS_SERVER; ?>">
                        <img src="<?php echo $logo; ?>" alt="<?php echo $description; ?>" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="mainMenu">
                    <!-- Main navigation -->
                    <ul class="nav navbar-nav pull-right">
                        <li class="primary">
                            <a href="<?php echo $about; ?>">About</a>
                        </li>
                        <li>
							<a class="firstLevel hasSubMenu">Portfolio</a>
                            <ul class="subMenu">
                                <?php foreach($categories as $category){ ?>
                                <li class="dropdownSubmenu"><a href="<?php echo $category['href']; ?>" class="<?php echo count($category['children']) > 0 ? "hasSubMenu" : ""; ?>"><?php echo $category['name']; ?></a>
									<?php if(count($category['children']) > 0){ ?>
										<ul class="subMenu">
										<?php foreach($category['children'] as $subCategory) { ?>
												<li class="dropdownSubmenu thirdLevel"><a href="<?php echo $subCategory['href']; ?>" class=""><?php echo $subCategory['name']; ?></a></li>
										<?php } ?>
										</ul>
									<?php } ?>
                                </li>
                                <?php } ?>
                            </ul>
                        </li>
                        <li id="contact-link">
                            <a href="<?php echo $contact; ?>">Contact</a>
                        </li>
			<li id="portfolio-link" class="primary">
				<a href="<?php echo $weddings; ?>">Weddings</a>
			</li>
                        <li class="primary">
                            <a href="<?php echo $investment; ?>">Families</a>
                        </li>
			<li class="primary">
				<a href="blog">Blog</a>
			</li>
                    </ul>
                    <!-- End main navigation -->
                </div>
            </nav>
        </div>
    </div>
</header>
<!-- header END -->


