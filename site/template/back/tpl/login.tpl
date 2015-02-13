<!DOCTYPE html>
<html lang="en-us">
{include file="header.tpl"}
<body id="login" class="animated fadeInDown">
    <!-- possible classes: minified, no-right-panel, fixed-ribbon, fixed-header, fixed-width-->
    <header id="header">
      <!--<span id="logo"></span>-->

      <div id="logo-group">
        <span id="logo"> <img src="{$_ROOT}site/template/back/images/logo_small.png" alt="{$CFG_COMPANY}"> </span>

        <!-- END AJAX-DROPDOWN -->
      </div>

      {if $cfg_settings.registerOnLogin == TRUE}<span id="login-header-space"> <span class="hidden-mobile">{$_LANG.login.needAccount}?</span> <a href="register.html" class="btn btn-danger">{$_LANG.login.createAccount}</a> </span>{/if}

    </header>

    <div id="main" role="main">

      <!-- MAIN CONTENT -->
      <div id="content" class="container">

        <div class="row">
          {if $loginAttr.left == TRUE}
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
              
              <img src="{$_ROOT}site/template/back/images/demo/iphoneview.png" class="pull-right display-image" alt="" style="width:210px">

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
          {/if}
          <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4" {if $loginAttr.left == TRUE}{else}style="margin:0 auto;float:none;"{/if}>
            <div class="well no-padding">
              <form action="{$_ROOT}{if $CFG_ADMIN_ACCESS <> NULL}{$CFG_ADMIN_ACCESS}/{/if}?" id="login-form" class="smart-form client-form" method="post">
                <header>
                  {$_LANG.login.title}
                </header>

                <fieldset>
                  
                  <section>
                    <label class="label">{$_LANG.login.user}</label>
                    <label class="input"> <i class="icon-append fa fa-user"></i>
                      <input type="text" name="user">
                      <b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> {$_LANG.login.userAlt}</b></label>
                  </section>

                  <section>
                    <label class="label">{$_LANG.login.pass}</label>
                    <label class="input"> <i class="icon-append fa fa-lock"></i>
                      <input type="password" name="pass">
                      <b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> {$_LANG.login.passAlt}</b> </label>
                    <div class="note">
                      <a href="forgotpassword.html">{$_LANG.login.forgot}</a>
                    </div>
                  </section>

                  <section>
                    <label class="checkbox">
                      <input type="checkbox" name="remember" checked="">
                      <i></i>{$_LANG.login.session}</label>
                  </section>
                </fieldset>
                <footer>
                  <button type="submit" class="btn btn-primary">
                    {$_LANG.login.signIn}
                  </button>
                </footer>
              </form>

            </div>
            
            {if $loginAttr.social == TRUE}
            <h5 class="text-center"> - {$_LANG.login.orSignIn} -</h5>
                              
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
            {/if}
            
          </div>
        </div>
      </div>

    </div>
   

{include file="footer.tpl"}
{literal}
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
              required : '{/literal}{$_LANG.login.userError}{literal}'
            },
            pass : {
              required : '{/literal}{$_LANG.login.passError}{literal}'
            }
          },

          // Do not change code below
          errorPlacement : function(error, element) {
            error.insertAfter(element.parent());
          }
        });
      });
    </script>
{/literal}    
{include file="trackgoogle.tpl"}
</body>
</html>