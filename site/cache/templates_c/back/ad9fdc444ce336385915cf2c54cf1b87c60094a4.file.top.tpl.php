<?php /* Smarty version Smarty-3.1.16, created on 2015-02-05 03:27:55
         compiled from "/home/enlatam/public_html/site/template/back/tpl/top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:176868680254d2e33b6e63c7-55475231%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ad9fdc444ce336385915cf2c54cf1b87c60094a4' => 
    array (
      0 => '/home/enlatam/public_html/site/template/back/tpl/top.tpl',
      1 => 1422987037,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '176868680254d2e33b6e63c7-55475231',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_IMG' => 0,
    'modules' => 0,
    '_LANG' => 0,
    '_ROOT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d2e33b73a084_75077376',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d2e33b73a084_75077376')) {function content_54d2e33b73a084_75077376($_smarty_tpl) {?><!-- HEADER -->
		<header id="header">
			<div id="logo-group">

				<!-- PLACE YOUR LOGO HERE -->
				<span id="logo"> <img src="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
logo.png" alt="SmartAdmin"> </span>
				<!-- END LOGO PLACEHOLDER -->

				<?php if ($_smarty_tpl->tpl_vars['modules']->value['activity']['active']==true) {?>
				<!-- Note: The activity badge color changes when clicked and resets the number to 0
				Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
				<span id="activity" class="activity-dropdown"> <i class="fa fa-user"></i> <b class="badge"> 21 </b> </span>

				<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
				<div class="ajax-dropdown">

					<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
					<div class="btn-group btn-group-justified" data-toggle="buttons">
						<label class="btn btn-default">
							<input type="radio" name="activity" id="ajax/notify/mail.html">
							Msgs (14) </label>
						<label class="btn btn-default">
							<input type="radio" name="activity" id="ajax/notify/notifications.html">
							notify (3) </label>
						<label class="btn btn-default">
							<input type="radio" name="activity" id="ajax/notify/tasks.html">
							Tasks (4) </label>
					</div>


					<!-- notification content -->
					<div class="ajax-notifications custom-scroll">

						<div class="alert alert-transparent">
							<h4>Click a button to show messages here</h4>
							This blank page message helps protect your privacy, or you can show the first message here automatically.
						</div>

						<i class="fa fa-lock fa-4x fa-border"></i>

					</div>
					<!-- end notification content -->

					<!-- footer: refresh area -->
					<span> Last updated on: 12/12/2013 9:43AM
						<button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
							<i class="fa fa-refresh"></i>
						</button> </span>
					<!-- end footer -->

				</div>
				<!-- END AJAX-DROPDOWN -->
				<?php }?>
			</div>

			<?php if ($_smarty_tpl->tpl_vars['modules']->value['recentProjects']['active']==true) {?>
			<!-- projects dropdown -->
			<div id="project-context">

				<span class="label">Projects:</span>
				<span id="project-selector" class="popover-trigger-element dropdown-toggle" data-toggle="dropdown">Recent projects <i class="fa fa-angle-down"></i></span>

				<!-- Suggestion: populate this list with fetch and push technique -->
				<ul class="dropdown-menu">
					<li>
						<a href="javascript:void(0);">Online e-merchant management system - attaching integration with the iOS</a>
					</li>
					<li>
						<a href="javascript:void(0);">Notes on pipeline upgradee</a>
					</li>
					<li>
						<a href="javascript:void(0);">Assesment Report for merchant account</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="javascript:void(0);"><i class="fa fa-power-off"></i> Clear</a>
					</li>
				</ul>
				<!-- end dropdown-menu-->

			</div>
			<!-- end projects dropdown -->
			<?php }?>

			<!-- pulled right: nav area -->
			<div class="pull-right">

				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);" title="<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['top']['collapseMenu'];?>
"><i class="fa fa-reorder"></i></a> </span>
				</div>
				<!-- end collapse menu -->

				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
?logoff=1" title="<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['top']['signOut'];?>
"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				<!-- end logout button -->

				<!-- search mobile button (this is hidden till mobile view port) -->
				<div id="search-mobile" class="btn-header transparent pull-right">
					<span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
				</div>
				<!-- end search mobile button -->

				<?php if ($_smarty_tpl->tpl_vars['modules']->value['topSearch']['active']==true) {?>
				<!-- input: search field -->
				<form action="#search.html" class="header-search pull-right">
					<input type="text" placeholder="<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['top']['search'];?>
" id="search-fld">
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
					<a href="javascript:void(0);" id="cancel-search-js" title="<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['top']['cancelSearch'];?>
"><i class="fa fa-times"></i></a>
				</form>
				<!-- end input: search field -->
				<?php }?>
				<div class="btn-header transparent pull-right" id="fullscreen">
					<span> <a title="<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['top']['fullScreen'];?>
" onclick="launchFullscreen(document.documentElement);" href="javascript:void(0);"><i class="fa fa-arrows-alt"></i></a> </span>
				</div>

				<?php if ($_smarty_tpl->tpl_vars['modules']->value['multiLang']['active']==true) {?>
				<!-- multiple lang dropdown : find all flags in the image folder -->
				<ul class="header-dropdown-list hidden-xs">
					<li>
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="<?php echo $_smarty_tpl->tpl_vars['_IMG']->value;?>
flags/us.png"> <span> US </span> <i class="fa fa-angle-down"></i> </a>
						<ul class="dropdown-menu pull-right">
							<?php echo $_smarty_tpl->tpl_vars['modules']->value['multiLang']['langList'];?>

						</ul>
					</li>
				</ul>
				<!-- end multiple lang -->
				<?php }?>

			</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER --><?php }} ?>
