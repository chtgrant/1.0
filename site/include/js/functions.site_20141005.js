$(document).ready(function () {

$.varGlobalCstm = new Object();
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



/*$("div.navigation ul#priNav li").mouseover( function() { 
		
		$('div.navigation ul#priNav li').each(function(index) { $("#subNav"+(index+1)).hide(); });
*/
$("#header div ul#priNav li").live("mouseover", function() { 
	var listItem = $("#header div ul li").index($(this))-4;
	var style = false; 
	//alert(listItem);
	//$('#header div ul#priNav li').each(function(index) { $("#subNav"+listItem).animate({height:'0px'},100); });

	m = listItem == 1 ? 264 : 0;
	var height = 300;

	$("#subNav"+listItem).css('margin-left',m+'px');
	if($("#header div ul#priNav").find('li:first').hasClass('current'))
		var style = true; // chequear si ya estamos en la seccion style

	//$("#header div ul#priNav").find('li:first').addClass('current');

	if(listItem == 1)
	{
		$("#subNav0").animate({height:height+'px'},500);

	$("#subNav0").mouseleave( function() {
		
		$("#subNav0").filter(':not(:animated)').animate({height:'0px'},100);
			$("#header div ul#priNav").find('li:first').removeClass('current');

			});
	}


	});

$("#header div ul#priNav li").mouseover( function() { $(this).addClass('current') });
$("#header div ul#priNav li").mouseleave( function() { if($("#subNav0").css('height') == '0px')$(this).removeClass('current'); });

if ($("[rel=tooltip]").length) {$("[rel=tooltip]").tooltip();}

window.onscroll = function() 
{
	if (window.pageYOffset >= 30)
		$("#header").addClass('hdrFx');
	else
		$("#header").removeClass('hdrFx');
}

/*$('.add-to-cart').on('click', function () {
        var cart = $('.shopping-cart');
        var imgtodrag = $(this).parents("p").parents("div").find("img").eq(0);
		var cartItemsCount = $('.cart-link').find("span").html().replace("(","").replace(")","")*1 || 0;
		//alert(imgtodrag)
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
                $(this).detach()
            });

			$('.cart-link').find("span").html("("+(cartItemsCount+1)+")")
        }
    });*/

socialModal();
});//end document

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

function getMoreRecords(style,limit,resPag)
{
	var loader = pLoader();//'<div style="width:20%;margin:20px auto;"> <i class="fa fa-gear fa-2x fa-spin"></i> Cargando...</div>';
	$('#bringMore').html(loader);
	$.ajax({
				  type: "POST",
				  url: Cfg.CFG_FOL_LOAD+"loadMoreRows.php",
				  data: 'style='+style+'&limit='+limit+'&resPag='+resPag,
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
	/*$('.contRegister').each(function(el){$vals += '&'+this.name+'='+this.value;});
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_LOAD+"register.user.php",
			data: $vals,
			success: function(data) {
					
			}
	});*/
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
				$(obj).html('In cart');
            });

			$('.cart-link').find("span").html("("+(cartItemsCount+1)+")")
        }
}

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