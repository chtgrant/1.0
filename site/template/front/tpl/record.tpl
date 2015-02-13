<h2 class="categoryTit">Styles \ <a href="{$_ROOT}{$style}/">{$style}</a> </h2>
<div class="recordContImg2"><img src="{$imgRecord}" /></div>
<div class="recordDesc">
	<h1>{$d.titulo} <a href="#"><i class="fa fa-star-o fa-lg star-fr2 " original-title="Add to my favourites" id="butFav"></i></a></h1>
	<ul>
		<li><label>Label:</label>{$d.sello}&nbsp;</li>
		<li><label>Format:</label>{$d.formato}&nbsp;</li>
		<li><label>Country:</label>{$d.country}&nbsp;</li>
		<li><label>Released:</label>19{$d.year_release}&nbsp;</li>
		<li><label>Genere:</label>{$d.style}&nbsp;</li>
	</ul>
</div>
<br class="cl" />
<p class="socialRecord">
	<a href="#"><i class="fa fa-star fa-facebook-square star-bt" original-title="Share on Facebook" id="butSocialFb" onClick="window.open('http://www.facebook.com/sharer.php?s=100&amp;p[title]={$d.titulo|urlencode}&amp;p[summary]={$d.titulo|urlencode}&amp;p[url]={$d.url|urlencode}&amp;&p[images][0]={$CFG_URL}{$imgRecord}', 'sharer', 'toolbar=0,status=0,width=548,height=325');" href="javascript: void(0)"></i></a>
	<a href="#"><i class="fa fa-star fa-twitter-square star-bt" original-title="Share on Twitter" id="butSocialTw"></i></a></p>
<h3 class="trackListTit">Track List <i class="fa fa-star fa-list star-fr"></i></h3>
<ul class="trackList">
	{$pList}
</ul>

<h3 class="trackListTit">Reviews <i class="fa fa-star fa-comment-o star-fr"></i></h3>

<br class="cl" />

			
{literal}
<script>
$('#butFav').tipsy();
$('#butSocialFb').tipsy();
$('#butSocialTw').tipsy();
</script>
{/literal}