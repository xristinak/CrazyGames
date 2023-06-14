<?php

$dName="unityserver";

$userID=$_POST['id'];
$username=$_POST['username'];
$email=$_POST['email'];
$points=$_POST['points'];
$lives=$_POST['lives'];


$connection = new mysqli("localhost","root","",$dName);

if(!$connection)
{
	die("Connection failed. ". mysqli_connect_error());
}

$sql="UPDATE users SET username='$username', email='$email' , lives='$lives' , points='$points' WHERE id='$userID'";
		if(mysqli_query($connection, $sql))
 		{
		
		echo("ok");
		}
		else
		{
			echo("not ok");
		}

 		
 
  
  


?>
