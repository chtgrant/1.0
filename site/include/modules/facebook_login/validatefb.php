<?php
ob_start();
include("facebook_constants.php");

$users = $facebook->getUser();
print_r($users);
if ($users!="") {	
  try {

    $user_profile = $facebook->api('/me');
	$logoutUrl = $facebook->getLogoutUrl();
	$fuserid=$user_profile["id"];
	$fusername=$user_profile["username"];
	$newtoken=base64_encode($fuserid."::".$fusername);

print_r($user_profile);

  } catch (FacebookApiException $e) {
    $users = null;
  }
}
?>