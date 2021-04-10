<?php
$ClassID = $_POST['ClassID'];
$LastNameID = $_POST['LastNameID'];
$TimeID = (CURDATE());
$DateID = (CURTIME());
//$LoginStatusID = $_POST['LoginStatusID'];

if (!empty($username) || !empty($password) || !empty($gender) || !empty($email) || !empty($phoneCode) || !empty($phone)) {
    $host = "localhost";
    $dbUsername = "PanelUser";
    $dbPassword = "Bblketh5S1";
    $dbName = "Logs";
    //create connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $INSERT = "INSERT INTO Logs (ClassID, LastNameID, TimeID, DateID) VALUES (?, ?, ?, ?, ?, ?)";
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $email);
     $stmt->execute();
     $stmt->bind_result($email);
     $stmt->store_result();
     $stmt->store_result();
     $stmt->fetch();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("ssssii", $ClassID, $LastNameID, $TimeID, $DateID);
      $stmt->execute();
      echo "New record inserted sucessfully";
     } else {
      echo "There was an error logging you into or out of the CyberSecurity Lab please let your professor know.";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required, please try again.";
 die();
}
?>