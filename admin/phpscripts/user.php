<?php


function sendPassword($username, $password, $email, $url){
$to = $email;
$subj = "Login Password";
$msg = "Username: " .$username. "\n\nPassword: " .$password. "\n\nEmail: " .$email. "\n\nLogin Page: " .$url;
mail($to,$subj,$msg);
}

function createUser($fname, $username, $password, $email, $fail, $lvllist){
  include('connect.php');
  $userstring = "INSERT INTO tbl_user VALUES(NULL,'{$fname}','{$username}','{$password}','{$email}',NULL,'no',NULL,'{$fail}','{$lvllist}')";
  // echo $userstring;
  $userquery = mysqli_query($link, $userstring);
  if($userquery) {
    return true;
  }else{
    return false;
  }
  mysqli_close($link);
}


 ?>
