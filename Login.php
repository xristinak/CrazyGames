<?php

$dName="unityserver";


$username=$_POST['username'];
$password=$_POST['password'];



$connection = new mysqli("localhost","root","",$dName);

if(!$connection)
{
	die("Connection failed. ". mysqli_connect_error());
}

$sql = "SELECT * FROM users WHERE username='$username' && password='$password' ";
$result = mysqli_query($connection, $sql);
//$row = mysqli_fetch_assoc($result);

 if($result)
 {
 	$row = mysqli_num_rows($result);
 	if($row===0)
 	{
 		
 		
 		
 	}
 	else
 	{
 		echo("ok");
 	}
 	
 }
  
  


?>