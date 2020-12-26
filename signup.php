<?php 
$con=mysqli_connect("localhost","root","","educateme") or die(mysqli_error());
  //check whether submit button is pressed or not
if((isset($_POST['submit'])))
{
$Name = $con->real_escape_string($_POST['name']);
$Email = $con->real_escape_string($_POST['email']);
$Password = $con->real_escape_string($_POST['password']);
$Confirmpassword = $con->real_escape_string($_POST['confirmpassword']);

if ($Password==$Confirmpassword) {

	$sql="INSERT INTO users (name,email,password) VALUES ('".$Name."','".$Email."', '".$Password."')";
  //Execute the query and returning a message
if(!$result = $con->query($sql)){
die('Error occured [' . $con->error . ']');
echo "Error";

}
else{
   echo "Registration Success";
}

	# code...
}
else{
	echo "password do not match";
}



  //query to insert the variable data into the database


}



$con->close();
header('Location: index.html');
 exit;
?>