
<?php

$dName="unityserver";


$username=$_POST['username'];



$connection = new mysqli("localhost","root","",$dName);

if(!$connection)
{
  die("Connection failed. ". mysqli_connect_error());
}

$sql = "SELECT * FROM users WHERE username='$username'";
$result = mysqli_query($connection, $sql);
//$row = mysqli_fetch_assoc($result);

 while($row = mysqli_fetch_assoc($result)) {
    echo  "skipline"."/".$row["username"]."/".  $row["email"]."/" .$row["lives"] ."/".  $row["points"]."/".$row["id"];
  }
  
  


?>