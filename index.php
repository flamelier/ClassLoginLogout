<?php 
include "config.php";
?>
<!doctype html>
<html>
<head>
    <title>VWCC CyberSecurity Lab</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="static/style/master.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<center>
  <br />
<form action="insert.php" method="post">
  <div">
    <img src="static/images/VWCC_Logo.png" alt="" class="background-image">
  </div>
  <h2>VWCC CyberSecurity Lab</h2>
  <div class="container">
     <form action="insert.php" method="POST">
      <label for="uname"><b>Class</b></label>

      <select list="Classes" name="ClassID" id="classes" required>
            <option selected hidden value="">Select Class</option>
            <?php 
            // Fetch Classes
            $sql_department = "SELECT ClassID FROM classnumbers";
            $department_data = mysqli_query($con,$sql_department);
            while($row = mysqli_fetch_assoc($department_data) ){
                $ClassID = $row['ClassID'];
              
                // Option
                echo "<option value='".$ClassID."' >".$ClassID."</option>";
            }
            ?>
        </select>
      <br />
      <label for="LastNameID"><b>Last Name</b></label>
      <input type="text" placeholder="Enter Last Name" name="LastNameID" required>
      <br />
      <input type="radio" name="LoginStatus" value="t" required><b>Login</b>
      <input type="radio" name="LoginStatus" value="f" required><b>Logout</b>
      <br />
      <button type="submit">Submit</button>
    </form>
</center>
  </div>
  </div>
</form>
</body>
</html>
