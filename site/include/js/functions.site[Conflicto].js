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
	if($(this).hasClass('fa-star-o'))
	{
		$(this).removeClass('fa-star-o');
		$(this).addClass('fa-star')
	}
});
$(".recordCont > a > i").mouseout(function() { 
	if($(this).hasClass('fa-star'))
	{
		$(this).removeClass('fa-star');
		$(this).addClass('fa-star-o')
	}
});
$(".recordDesc > h1 > a > i").mouseover(function() { 
	if($(this).hasClass('fa-star-o'))
	{
		$(this).removeClass('fa-star-o');
		$(this).addClass('fa-star')
	}
});
$(".recordDesc > h1 > a > i").mouseout(function() { 
	if($(this).hasClass('fa-star'))
	{
		$(this).removeClass('fa-star');
		$(this).addClass('fa-star-o')
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

	m = listItem == 0 ? 264 : 0;
	var height = 300;

	$("#subNav"+listItem).css('margin-left',m+'px');
	if($("#header div ul#priNav").find('li:first').hasClass('current'))
		var style = true; // chequear si ya estamos en la seccion style

	//$("#header div ul#priNav").find('li:first').addClass('current');

	if(listItem == 0)
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
	var loader = '<div style="width:20%;margin:20px auto;"> <i class="fa fa-gear fa-2x fa-spin"></i> Cargando...</div>';
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
	$('.contRegister').each(function(el){$vals += '&'+this.name+'='+this.value;});
	$.ajax({
			type: "POST",
			url: Cfg.CFG_FOL_LOAD+"register.user.php",
			data: $vals,
			success: function(data) {
					
			}
	});
}

function registerUserFB(response)
{
	$.ajax({
				  type: "POST",
				  url: Cfg.CFG_FOL_LOAD+"fb.register.user.php",
				  data:{
						face: response
						},
				  success: function(data) {
					$("#dialogPost").html(data);
					location.reload(); 
				  }
				});
}

function setFbPerms(response)
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"fb.user.exists.php",
				data: "id="+response.authResponse.userID,
				async: true,
				success: function(data) {
					if(data == 0)
						registerUserFB(response);
					else
						loginUserFB(response);
				}
			});
	
}

function checkUserExistsFB(response)
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"fb.user.exists.php",
				data: "id="+response.authResponse.userID,
				async: true,
				success: function(data) {
					$("#dialogPost").val(data);
					}
			});
}

function loginUserFB(response)
{
	$.ajax({
				type: "POST",
				url: Cfg.CFG_FOL_LOAD+"fb.user.login.php",
				data: "id="+response.authResponse.userID,
				async: true,
				success: function(data) {
					$("#dialogPost").val(data);
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