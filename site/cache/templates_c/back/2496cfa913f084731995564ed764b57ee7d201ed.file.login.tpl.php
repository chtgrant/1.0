<?php /* Smarty version Smarty-3.1.16, created on 2015-02-04 04:57:59
         compiled from "/home/enlatam/public_html/newsite/site/template/back/tpl/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:207177971454d1a6d70de346-72675547%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2496cfa913f084731995564ed764b57ee7d201ed' => 
    array (
      0 => '/home/enlatam/public_html/newsite/site/template/back/tpl/login.tpl',
      1 => 1422987036,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '207177971454d1a6d70de346-72675547',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_ROOT' => 0,
    'CFG_COMPANY' => 0,
    'cfg_settings' => 0,
    '_LANG' => 0,
    'loginAttr' => 0,
    'CFG_ADMIN_ACCESS' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54d1a6d719b3c6_28192407',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d1a6d719b3c6_28192407')) {function content_54d1a6d719b3c6_28192407($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en-us">
<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body id="login" class="animated fadeInDown">
    <!-- possible classes: minified, no-right-panel, fixed-ribbon, fixed-header, fixed-width-->
    <header id="header">
      <!--<span id="logo"></span>-->

      <div id="logo-group">
        <span id="logo"> <img src="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/images/logo_small.png" alt="<?php echo $_smarty_tpl->tpl_vars['CFG_COMPANY']->value;?>
"> </span>

        <!-- END AJAX-DROPDOWN -->
      </div>

      <?php if ($_smarty_tpl->tpl_vars['cfg_settings']->value['registerOnLogin']==true) {?><span id="login-header-space"> <span class="hidden-mobile"><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['needAccount'];?>
?</span> <a href="register.html" class="btn btn-danger"><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['createAccount'];?>
</a> </span><?php }?>

    </header>

    <div id="main" role="main">

      <!-- MAIN CONTENT -->
      <div id="content" class="container">

        <div class="row">
          <?php if ($_smarty_tpl->tpl_vars['loginAttr']->value['left']==true) {?>
          <div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
            <h1 class="txt-color-red login-header-big">SmartAdmin</h1>
            <div class="hero">

              <div class="pull-left login-desc-box-l">
                <h4 class="paragraph-header">It's Okay to be Smart. Experience the simplicity of SmartAdmin, everywhere you go!</h4>
                <div class="login-app-icons">
                  <a href="javascript:void(0);" class="btn btn-danger btn-sm">Frontend Template</a>
                  <a href="javascript:void(0);" class="btn btn-danger btn-sm">Find out more</a>
                </div>
              </div>
              
              <img src="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
site/template/back/images/demo/iphoneview.png" class="pull-right display-image" alt="" style="width:210px">

            </div>

            <div class="row">
              <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <h5 class="about-heading">About SmartAdmin - Are you up to date?</h5>
                <p>
                  Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa.
                </p>
              </div>
              <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <h5 class="about-heading">Not just your average template!</h5>
                <p>
                  Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi voluptatem accusantium!
                </p>
              </div>
            </div>

          </div>
          <?php }?>
          <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4" <?php if ($_smarty_tpl->tpl_vars['loginAttr']->value['left']==true) {?><?php } else { ?>style="margin:0 auto;float:none;"<?php }?>>
            <div class="well no-padding">
              <form action="<?php echo $_smarty_tpl->tpl_vars['_ROOT']->value;?>
<?php if ($_smarty_tpl->tpl_vars['CFG_ADMIN_ACCESS']->value!=null) {?><?php echo $_smarty_tpl->tpl_vars['CFG_ADMIN_ACCESS']->value;?>
/<?php }?>?" id="login-form" class="smart-form client-form" method="post">
                <header>
                  <?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['title'];?>

                </header>

                <fieldset>
                  
                  <section>
                    <label class="label"><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['user'];?>
</label>
                    <label class="input"> <i class="icon-append fa fa-user"></i>
                      <input type="text" name="user">
                      <b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> <?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['userAlt'];?>
</b></label>
                  </section>

                  <section>
                    <label class="label"><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['pass'];?>
</label>
                    <label class="input"> <i class="icon-append fa fa-lock"></i>
                      <input type="password" name="pass">
                      <b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> <?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['passAlt'];?>
</b> </label>
                    <div class="note">
                      <a href="forgotpassword.html"><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['forgot'];?>
</a>
                    </div>
                  </section>

                  <section>
                    <label class="checkbox">
                      <input type="checkbox" name="remember" checked="">
                      <i></i><?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['session'];?>
</label>
                  </section>
                </fieldset>
                <footer>
                  <button type="submit" class="btn btn-primary">
                    <?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['signIn'];?>

                  </button>
                </footer>
              </form>

            </div>
            
            <?php if ($_smarty_tpl->tpl_vars['loginAttr']->value['social']==true) {?>
            <h5 class="text-center"> - <?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['orSignIn'];?>
 -</h5>
                              
                    <ul class="list-inline text-center">
                      <li>
                        <a href="javascript:void(0);" class="btn btn-primary btn-circle"><i class="fa fa-facebook"></i></a>
                      </li>
                      <li>
                        <a href="javascript:void(0);" class="btn btn-info btn-circle"><i class="fa fa-twitter"></i></a>
                      </li>
                      <li>
                        <a href="javascript:void(0);" class="btn btn-warning btn-circle"><i class="fa fa-linkedin"></i></a>
                      </li>
                    </ul>
            <?php }?>
            
          </div>
        </div>
      </div>

    </div>
   

<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<script type="text/javascript">
      runAllForms();

      $(function() {
        // Validation
        $("#login-form").validate({
          // Rules for form validation
          rules : {
            user : {
              required : true
            },
            pass : {
              required : true,
              minlength : 3,
              maxlength : 20
            }
          },

          // Messages for form validation
          messages : {
            user : {
              required : '<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['userError'];?>
'
            },
            pass : {
              required : '<?php echo $_smarty_tpl->tpl_vars['_LANG']->value['login']['passError'];?>
'
            }
          },

          // Do not change code below
          errorPlacement : function(error, element) {
            error.insertAfter(element.parent());
          }
        });
      });
    </script>
    
<?php echo $_smarty_tpl->getSubTemplate ("trackgoogle.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</body>
</html><?php }} ?>
