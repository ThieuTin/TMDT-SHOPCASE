<?php
// Error Reporting Turn On
ini_set('error_reporting', E_ALL);

// Setting up the time zone
date_default_timezone_set('America/Los_Angeles');

// Host Name
$dbhost = 'localhost';

// Database Name
$dbname = 'ecommerceweb100';

// Database Username
$dbuser = 'root';

// Database Password
$dbpass = '';

// Defining base url
define("BASE_URL", "");

// Getting Admin url
define("ADMIN_URL", BASE_URL . "admin" . "/");

try {
	$pdo = new PDO("mysql:host={$dbhost};dbname={$dbname}", $dbuser, $dbpass);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch( PDOException $exception ) {
	echo "Connection error :" . $exception->getMessage();
}


// 
// Thanks for the quick responses …

// Created a new DB… not changed the PHP version … it is 7.1 …

// Now finally able to Connect to DB with this code

// $con = mysqli_connect(“Localhost”,“id563317_newuser”,“db@2017”,“id563317_newdb”);
// (“hostname”,“username”,“password”,“database name”)

// Regards,

// Jagadish