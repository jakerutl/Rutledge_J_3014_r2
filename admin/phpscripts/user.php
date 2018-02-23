<?php
function createUser($fname, $username, $password, $email, $fail, $lvllist){
  include('connect.php');
  $userstring = "INSERT INTO tbl_user VALUES(NULL,'{$fname}','{$username}','{$password}','{$email}',NULL,'no',NULL,'{$fail}','{$lvllist}')";
  // echo $userstring;
  $userquery = mysqli_query($link, $userstring);
  if($userquery) {
    redirect_to('admin_index.php');
  }else{
    $message = "Your hiring practices have failed you. This individual sucks";
    return $message;
  }
  mysqli_close($link);

}

function sendPassword($email, $username,$password){
$to = $email;
$subj = "Login Password";
$extra = "Reply-To: ".$email;
// $msg = "Name: ".$username."\n\nEmail: ".$email."\n\nPassword: ".$password.;
mail($to,$subj,$msg,$extra);
redirect_to('admin_index.php');
}


 ?>
