<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:57:59
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:127994219554d1a6d719ed78-95746757%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '849a6cceb44bd22e28469408a73a3521f4b8d353' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/header.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '127994219554d1a6d719ed78-95746757',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SITE_TITLE' => 0,
    '_ROOT' => 0,
    '_IMG' => 0,
    'CFG_FOL_FWK_JS' => 0,
    '_LANG' => 0,
    'CFG_FOL_SITE_JS' => 0,
    'jsHeader' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a6d71fff35_79442640',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6d71fff35_79442640')) {function content_54d1a6d71fff35_79442640($_smarty_tpl) {?><head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

<title> <?php echo $_smarty_tpl->tpl_vars['SITE_TITLE']->value;?>
 </title>
<meta name="description" content="">
<meta name="author" content="">
			
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/smartadmin-production.css">
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/smartadmin-skins.css">
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/chosen.css">
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/popover-extra-placements.css">
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/css/styles.back.css">

<!-- SmartAdmin RTL Support is under construction
<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.css"> -->

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- FAVICONS -->
<link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
favicon/favicon.ico" type="image/x-icon">
<link rel="icon" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
favicon/favicon.ico" type="image/x-icon">

<!-- GOOGLE FONT -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- Specifying a Webpage Icon for Web Clip 
	Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/touch-icon-ipad-retina.png">
		
<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image" href="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
splash/iphone.png" media="screen and (max-device-width: 320px)">

<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
libs/jquery-2.0.2.min.js"><\/script>');
			}
		</script>

		<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
config.js.php?s=back&l=<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['general']['langCode'];?>
"></script>
<!-- JQUERY SELECT2 INPUT -->
		<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
plugin/select2/select2.min.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
swfobject.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
jquery.uploadify.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
jquery.fancybox.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_FWK_JS']->value;?>
functions.js"></script>	
<script src="<?php echo $_smarty_tpl->tpl_vars['CFG_FOL_SITE_JS']->value;?>
functions.back.js"></script>	
<script type="text/javascript">
<?php echo $_smarty_tpl->tpl_vars['jsHeader']->value;?>

</script>
</head>
<?php }} ?>
