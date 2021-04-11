<?php

$host = "localhost"; /* Host name */
$user = "PanelUser"; /* User */
$password = "Bblketh5S1@"; /* Password */
$dbname = "ClassLoginLogout"; /* Database name */

$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}