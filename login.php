<?php 
$con=mysqli_connect("localhost","root","","educateme") or die(mysqli_error());
  //check whether submit button is pressed or not
if((isset($_POST['submit'])))
{
$Email = $con->real_escape_string($_POST['email']);
$Password = $con->real_escape_string($_POST['password']);

if ($con->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT email, password FROM users";
$result = $con->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {

  	$semail= $row["email"];
  	$spassword= $row["password"];
  }
} else {
  echo "0 results";
}

if ($Email==$semail) {
	if ($Password==$spassword) {
  echo "Login Successfull";


	}
	# code...
}






}



$con->close();
header('Location: index.html');
 exit;
?>