<?php 
$con=mysqli_connect("localhost","root","","educateme") or die(mysqli_error());
  //check whether submit button is pressed or not
if((isset($_POST['submit'])))
{
$Name = $con->real_escape_string($_POST['name']);
$Email = $con->real_escape_string($_POST['email']);
$Phone = $con->real_escape_string($_POST['phone']);
$comments = $con->real_escape_string($_POST['message']);
$t=date("h:i:sa").$Phone;
  //query to insert the variable data into the database
$sql="INSERT INTO contacts (time,name,email,phone,message) VALUES ('".$t."','".$Name."','".$Email."', '".$Phone."', '".$comments."')";
  //Execute the query and returning a message
if(!$result = $con->query($sql)){
die('Error occured [' . $con->error . ']');
echo "Error";

}
else
   echo "Thank you! We will get in touch with you soon";
}
$con->close();
header('Location: contact.html');
 exit;
?>