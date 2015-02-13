$(document).ready(function () {

$.varGlobalCstm = new Object();
$.varGlobalCstm.topMenu = false;
$.varGlobalCstm.ponds = '';
$.varGlobalCstm.page = 1;
$.varGlobalCstm.resPag = 12;
$.varGlobalCstm.style = '';
$.varGlobalCstm.noMoreRes = false;

$(".recordList").live("mouseover",function() { 
	$('#content div.recordList').each(function(el){
		  $(this).css('opacity','.5');
		});
		$(this).css('opacity','1');
	});
$("#content").mouseleave(function() { 
	$('#content div.recordList').each(function(el){
		  $(this).css('opacity','1');
		});
	});

$(".recordCont > a > i").mouseover(function() { 
	if($(this).hasClass('fa-heart-o') && !$(this).hasClass('star-fav'))
	{
		$(this).removeClass('fa-heart-o');
		$(this).addClass('fa-heart')
	}
});
$(".recordCont > a > i").mouseout(function() { 
	if($(this).hasClass('fa-heart') && !$(this).hasClass('star-fav'))
	{
		$(this).removeClass('fa-heart');
		$(this).addClass('fa-heart-o')
	}
});
$(".recordDesc > h1 > a > i").mouseover(function() { 
	if($(this).hasClass('fa-heart-o') && !$(this).hasClass('star-fav'))
	{
		$(this).removeClass('fa-heart-o');
		$(this).addClass('fa-heart')
	}
});
$(".recordDesc > h1 > a > i").mouseout(function() { 
	if($(this).hasClass('fa-heart') && !$(this).hasClass('star-fav'))
	{
		$(this).removeClass('fa-heart');
		$(this).addClass('fa-heart-o')
	}
});

$("ul.priNav li").live("mouseover", function() { 
	var listItem = $("ul.priNav li").index($(this));
	var sub = $(this).attr("data-submenu");
	var style = false; 
	//alert(sub);
	//$('#header div ul#priNav li').each(function(index) { $("#subNav"+listItem).animate({height:'0px'},100); });

	m = listItem == 0 ? 264 : 0;
	var height = 300;

	$(".subNav"+listItem).css('margin-left',m+'px');
	if($("ul.priNav").find('li:first').hasClass('current'))
		var style = true; // chequear si ya estamos en la seccion style

	//$("#header div ul#priNav").find('li:first').addClass('current');

	if(sub == 1 || sub == 2)
	{
		$(".subnav"+sub).animate({height:height+'px'},500);

	$(".subnav"+sub).mouseleave( function() {
		
		$(".subnav"+sub).filter(':not(:animated)').animate({height:'0px'},100);
			$("ul.priNav").find('li:first').removeClass('current');

			});
	}


	});

$("ul.priNav li").mouseover( function() { $(this).addClass('current') });
$("ul.priNav li").mouseleave( function() { if($(".subnav"+sub).css('height') == '0px')$(this).removeClass('current'); });

if ($("[rel=tooltip]").length) {$("[rel=tooltip]").tooltip();}

jQuery(window).scroll(function(){
	if(jQuery(window).scrollTop() > 400)
		jQuery("#back-to-top").fadeIn(200);
	else
		jQuery("#back-to-top").fadeOut(200);
});
	
jQuery('#back-to-top, .back-to-top').click(function() {
		  jQuery('html, body').animate({ scrollTop:0 }, '800');
		  return false;
});

window.onscroll = function() 
{
	if (window.pageYOffset >= 230) // && jQuery(window).scrollTop() > 200
	{
		$("#header-content-scroll").animate({ height : '110px' }, 1000,'easeOutElastic',function() {  });
	}
	else if(window.pageYOffset < 230)
		$("#header-content-scroll").animate({ height : '0px' }, 500,'linear',function() {  });
	else{}

}

$(".search-btn").mouseover( function() { $("span.search-cont input").show();$("span.search-cont input").animate({ width : '200px' }, 200,'linear',function() {  }); });
$("span.search-cont").mouseleave( function() { $("span.search-cont input").animate({ width : '0px' }, 100,'linear',function() { $("span.search-cont input").hide(); }); });
$(".search-btn").click(function(event) { searchOutput(); });
$('input').keypress(function(e) {
 		if(e.which == 10 || e.which == 13)  // Enter pressed?
 			searchOutput();
});

// Cache the Window object
$window = $(window);

$('div[data-type="background"]').each(function(){
var $bgobj = $(this); // assigning the object
                    
$(window).scroll(function() {

var backgroundPos = $($bgobj).css('backgroundPosition').split(" ");
//now contains an array like ["0%", "50px"]

var xPosVar = backgroundPos[0],yPosVar = backgroundPos[1];

// Scroll the background at var speed
// the yPos is a negative value because we're scrolling it UP!								
var yPos = -($window.scrollTop() / $bgobj.data('speed')); 
		
// Put together our final background position
var coords = '50% '+ yPos + 'px';

// Move the background
$bgobj.css({ backgroundPosition: coords });
});

}); // window scroll Ends


socialModal();
});//end document


/***********************************************************************************************************************************************/
/**************************************************** DEFAULT FUNCTIONS FOR SITE ***************************************************************/
/***********************************************************************************************************************************************/

function socialModal(w,h)
{
	$('#twitterBtn-link,#facebookBtn-link,#googleBtn-link').click(function(event) {
	event.preventDefault();
	var width  = w ? 575 : w,
		height = h ? 400 : h,
		left   = ($(window).width()  - width)  / 2,
		top    = ($(window).height() - height) / 2,
		url    = this.href,
		opts   = 'status=1' +
				 ',width='  + width  +
				 ',height=' + height +
				 ',top='    + top    +
				 ',left='   + left;

	window.open(url, 'twitter', opts);

	
	/*$.fancybox.open({
	href : this.href,
	type : 'iframe',
	padding : 5
	});*/

	return false;
	});
}
function setOverlay()
{
	$('<div class="modal-backdrop" style="opacity:0.5"></div>').appendTo(document.body);
}
function removeOverlay()
{
	$(".modal-backdrop").remove();
}
function pLoader()
{
	return '<div style="width:20%;margin:20px auto;"> <i class="fa fa-gear fa-2x fa-spin"></i> Cargando...</div>';
}
function fancyAlert(msg) 
{
    jQuery.fancybox({
    'modal' : true,
    'content' : "<div style=\"margin:1px;width:240px;\">"+msg+"<div style=\"text-align:center;margin-top:10px;\"><input style=\"margin:3px;padding:5px;width:100px;\" type=\"button\" onclick=\"jQuery.fancybox.close();\" value=\"Ok\"></div></div>"
    });
}
     
function fancyConfirm(msg,callback) 
{
    var ret;
    jQuery.fancybox({
    modal : true,
    content : "<div style=\"margin:1px;width:240px;\">"+msg+"<div style=\"text-align:right;margin-top:10px;\"><input id=\"fancyConfirm_cancel\" style=\"margin:3px;padding:0px;\" type=\"button\" value=\"Cancel\"><input id=\"fancyConfirm_ok\" style=\"margin:3px;padding:0px;\" type=\"button\" value=\"Ok\"></div></div>",
    onComplete : function() {
    jQuery("#fancyConfirm_cancel").click(function() {
    ret = false;
    jQuery.fancybox.close();
    })
    jQuery("#fancyConfirm_ok").click(function() {
    ret = true;
    jQuery.fancybox.close();
    })
    },
    onClosed : function() {
    callback.call(this,ret);
    }
    });
    }
     
    function fancyConfirm_text() {
    fancyConfirm("Ceci est un test", function(ret) {
    alert(ret)
    })
}


/***********************************************************************************************************************************************/
/**************************************************** DEFAULT FUNCTIONS FOR SITE ***************************************************************/
/***********************************************************************************************************************************************/



function searchOutput()
{
	if($("#str").val().length < 3)
		fancyAlert('Please fill search field to search a record with a string longer than 3 letters.');
	else
		$("#formSearch").submit(); 
}

function modalLogin(n)
{
	
	$.fancybox.open({
		href : Cfg._ROOT+'login/',
		type : 'iframe',
		width:800,
		height : 400,  
		padding : 5
	});
}

function getMoreRecords(style,search,limit,resPag)
{
	var loader = pLoader();//'<div style="width:20%;margin:20px auto;"> <i class="fa fa-gear fa-2x fa-spin"></i> Cargando...</div>';
	search = search || '';

	$('#bringMore').html(loader);
	$.ajax({
				  type: "POST",
				  url: Cfg.CFG_FOL_LOAD+"loadMoreRows.php",
				  data: 'style='+style+'&search='+search+'&&limit='+limit+'&resPag='+resPag,
				  success: function(data) {
					$('#bringMore').remove();
					$('#content').append(data);
					$("[rel=tooltip]").tooltip();
				  }
				});
	$.varGlobalCstm.page+= 1;
}

function authUser(response)
{
	$.ajax({
				  type: "POST",
				  url: Cfg.CFG_FOL_LOAD+"fb.auth.user.php",
				  data:{
						face: response
						},
				  success: function(data) {
					
				  }
				});
}

function registerUser()
{
	formRegister.submit();
}

function setFbPerms(response)
{
	$.ajax({
				  type: "POST",
				  url: Cfg.CFG_FOL_MOD+"fb.register.user.php",
				  data:{
						face: response
						},
				  success: function(data) {
					if(data)
						window.location.href=Cfg._ROOT+'settings/'; 
				  }
				});
}

function validateSession()
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"validateSession.php",
				data: "a=vfhsthns5sh5j447jbdalpus5hs5shnaerTa94gUUna04ga0ga523ddk8904gn0a4nhbjm7323dfhlop34ga04ng0a4jszqwe470k2hj8e3kl9d2",
				async: true,
				success: function(data) {
					$("#dialogPost").val(data);
					}
			});
}

function logout()
{
	window.location.href=Cfg._ROOT+'logout/';
}

function updateRegisterData()
{
	
	
	var $vals = $('#userData').find(':input').each(function(el){$vals += '&'+this.name+'='+this.value;});
	var changes = '<p id="changesApplied" style="margin-bottom:10px;height:0px;"><i class="fa fa-lg fa-check"></i> Info updated.</p>';
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_MOD+"update.user.php",
				data: $vals,
				async: false,
				success: function(data) {
					$('#userData').append(changes);
					$("#changesApplied").animate({ height : '20px' }, 1000,'linear',function() {  });
					setTimeout("$('#changesApplied').fadeOut( 'slow', function() {$('#changesApplied').remove();});",2000)
					}
			});
}

function completeShippingAddress(id)
{
	$('#userData').find(':input').each(function(el){
		//$vals += '&'+this.name+'='+this.value;
		var v = $(this).val();
		var n = $(this).attr('name');
		$('#fieldset_'+id).find(':input').each(function(el2){ 
			if (n == $(this).attr('name'))
				$(this).val(v);
			if($(this).attr('name') == 'nombre_completo')
				$(this).val($('#userData input[name="nombre"]').val()+' '+$('#userData input[name="apellido"]').val());
		});
		});
	
}

function updateShippingData(id)
{
	var $vals = $('#fieldset_'+id).find(':input').each(function(el){$vals += '&'+this.name+'='+this.value;});
	var changes = '<p id="changesApplied" style="margin-bottom:10px;height:0px;"><i class="fa fa-lg fa-check"></i> Info updated.</p>';
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_MOD+"update.shipping.php",
				data: $vals,
				async: false,
				success: function(data) {
					$('#fieldset_'+id).append(changes);
					$("#changesApplied").animate({ height : '20px' }, 1000,'linear',function() {  });
					setTimeout("$('#changesApplied').fadeOut( 'slow', function() {$('#changesApplied').remove();});",2000)
					}
			});
}

function addShippingAddress()
{
}

function addToFav(disco)
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_MOD+"user.addFavourite.php",
				data: 'disco='+disco+'&d='+$("#fav_"+disco).attr('data-fav'),
				async: false,
				success: function(data) {
					var a = $("#fav_"+disco).attr('data-fav');
					if(a == 1)
					{
						$("#fav_"+disco).removeClass('fa-heart');
						$("#fav_"+disco).addClass('fa-heart-o');
						$("#fav_"+disco).removeClass('star-fav');
						$("#fav_"+disco).attr('data-fav',0);
						$("#fav_"+disco).attr('data-original-title','Add to my Wish List');
						
					}
					else
					{
						$("#fav_"+disco).removeClass('fa-heart-o');
						$("#fav_"+disco).addClass('fa-heart')
						$("#fav_"+disco).addClass('star-fav');
						$("#fav_"+disco).attr('data-fav',1);
						$("#fav_"+disco).attr('data-original-title','Remove from Wish List');
					}
				}
			});
}

function addToCart(disco)
{
	if($("#cart_"+disco).attr('data-cart') == 0)
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_MOD+"user.addCart.php",
				data: 'disco='+disco,
				async: false,
				success: function(data) {
					var a = $("#cart_"+disco).attr('data-cart');
					animateCartItem(disco);
				}
			});
}

function animateCartItem(disco)
{
	var cart = $('.shopping-cart');
        var imgtodrag = $('#cart_'+disco).find("img").eq(0);
		var cartItemsCount = $('.cart-link').find("span").html().replace("(","").replace(")","")*1 || 0;
		//alert($('#cart_'+disco).find("img").eq(0).attr("src"))
        if (imgtodrag) {
            var imgclone = imgtodrag.clone()
                .offset({
                top: imgtodrag.offset().top,
                left: imgtodrag.offset().left
            })
                .css({
                'opacity': '0.5',
                    'position': 'absolute',
                    'height': '150px',
                    'width': '150px',
                    'z-index': '100'
            })
                .appendTo($('body'))
                .animate({
                'top': cart.offset().top + 10,
                    'left': cart.offset().left + 10,
                    'width': 75,
                    'height': 75
            }, 1000, 'easeInOutExpo');
            
            setTimeout(function () {
                cart.effect("pulsate", {
                    times: 3
                }, 600);
            }, 1500);

            imgclone.animate({
                'width': 0,
                    'height': 0
            }, function () {
                //$(obj).detach()
				$('#cart_'+disco).find("i.fa-shopping-cart").html(' In cart');
            });

			$('.cart-link').find("span").html("("+(cartItemsCount+1)+")")
        }
}

function enterSite()
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"user.login.php",
				data: 'user='+$("#Iuser").val()+'&pass='+$("#Ipass").val(),
				async: false,
				success: function(data) {
					if(data == 3)
						top.location.href=Cfg._ROOT+'settings/'; 
					else
					{
						var error = '<span style="display:block;margin:5px auto;color:#FF0000;height:10px;" id="errorLogin">Login incorrect</span>';
						$("#errorLogin").remove();
						$("#formLogin").append(error);
						$("#errorLogin").effect("shake", {
							times: 2
						}, 100);
					}
					}
			});
}

