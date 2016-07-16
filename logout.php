<?php
	session_start();
    session_unset();
	session_destroy();
	include("scripts/values.php");
	session_start();
	$_SESSION["logout"] = true;
	die(header("Location: index.php")); 
?>