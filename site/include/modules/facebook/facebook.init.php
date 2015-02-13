<?php
require 'src/facebook.php';

$facebook = new Facebook(array(
  'appId'  => APP_FB_API_LOGIN_KEY,
  'secret' => APP_FB_API_LOGIN_SECRET,
));

