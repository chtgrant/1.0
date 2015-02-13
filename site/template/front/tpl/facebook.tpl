<div id="dialogPost" style="display:none;"></div>
<div id="fb-root"></div>
{literal}
<script type="text/javascript">
window.fbAsyncInit = function() {
FB.init({
appId  : '264878576993143',
status : true, // check login status
cookie : true, // enable cookies to allow the server to access the session
xfbml  : true // parse XFBML
});
FB.Canvas.setAutoGrow(100); //set size according to iframe content size
};

(function() {
var e = document.createElement('script');
e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
e.async = true;
document.getElementById('fb-root').appendChild(e);
}());
</script>
{/literal}