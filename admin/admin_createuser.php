<?php
require_once('phpscripts/config.php');
confirm_logged_in();

  if(isset($_POST['submit'])){
    $fname = trim($_POST['fname']);
    $username = trim($_POST['username']);//add other coloumns to match below and also match the order in localhost
    $password = trim($_POST['password']);
    $password= rand(1000,5000);
    $password = password_hash($password, PASSWORD_DEFAULT);
    $email = trim($_POST['email']);
    $fail = trim($_POST['fail']);
    $lvllist = ($_POST['lvllist']);
    if(empty($lvllist)){
      $message = "Please select a user level.";
    }else{
      $result = createUser($fname, $username, $password, $email, $fail, $lvllist); //this must line up with database, thats why we didn't use the homework one
      $message = $result;
      if(!empty($email)){
        $recieve = sendPassword($email,$username,$password);
      }
    }
  }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Create User</title>
  <link rel="stylesheet" href="css/main.css">
</head>
<body>

  <header class="topBar" >
  	<div class="logOutBtn">
  		<a href="admin_login.php?logout=true" class="logout-link">Logout</a>
      <a href="admin_index.php" class=" logout-link">Home</a>
  	</div>
  </header>

  <div class="mainBody">
  	<div class="middle">
<h2 class="createUser">Create User</h2>

<div class="user_signup" >
<?php  if(!empty($message)){echo $message;} ?>
<form class="signupForm" action="admin_createuser.php" method="post">
  <label class="userLabels">First Name:</label>
  <input type="text" name="fname" value=""><br><br>
  <label class="userLabels">Username:</label>
  <input type="text" name="username" value=""><br><br>
  <!-- <label class="userLabels">Password:</label>
  <input type="text" name="password" value=""><br><br> -->
  <label class="userLabels">Email:</label>
  <input type="text" name="email" value=""><br><br>
  <select name="lvllist">
      <option value="">Select User Level</option>
      <option value="2">Web Admin</option>
      <option value="1">Web Master</option>
  </select><br><br>
  <input type="submit" name="submit" value="Create User">
  <h4>Random password will be <br>sent to you via email</h4>
</form>
</div>
</div>
</div>

</body>
</html>
