<?php
$ClassID = $_POST['ClassID'];
$LastNameID = $_POST['LastNameID'];
$LoginStatus = $_POST['LoginStatus'];

if (!empty($ClassID) || !empty($LastNameID) || !empty($LoginStatus)) {
    $host = "localhost";
    $dbUsername = "PanelUser";
    $dbPassword = "Bblketh5S1@";
    $dbName = "ClassLoginLogout";
    //create connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT LastNameID FROM UserData WHERE LastNameID = ?";
     $INSERT = "INSERT INTO Logs (ClassID, LastNameID, LoginStatus, TimeID, DateID) VALUES (?, ?, ?, CURTIME(), CURDATE())";
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $LastNameID);
     $stmt->execute();
     $stmt->bind_result($LastNameID);
     $stmt->store_result();
     $stmt->store_result();
     $stmt->fetch();
     $rnum = $stmt->num_rows;
     if ($rnum > 0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("sss", $ClassID, $LastNameID, $LoginStatus);
      $stmt->execute();
      echo "<br />";
      echo "<br />";
      echo "<br />";
      echo "<link href=\"static/style/master.css\" rel=\"stylesheet\">";
      echo "<h1><center>New status inserted sucessfully. Please wait for redirect or click <a href=\"index.php\">here</a>.</center></h1>";
      echo "<meta http-equiv=\"Refresh\" content=\"0; url= index.php\" />";
     } else {
      echo "<link href=\"static/style/master.css\" rel=\"stylesheet\">";
      echo "<h1><center>You were not found in the CyberSecurity Lab database please let your professor know.<br />Please click <a href=\"index.php\">here</a> to go back.</center></php>";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required, please try again.";
 die();
}
?>