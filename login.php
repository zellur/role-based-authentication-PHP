<?php
session_start();
$dbc=mysqli_connect('localhost','root','','qubee')
or die('Error for establishing connection');

if (isset($_POST['submit'])) {
 	
 	
 	  $username = mysqli_real_escape_string($dbc,$_POST['username']);
      $password = mysqli_real_escape_string($dbc,$_POST['password']);

 	$query="SELECT user_id FROM user WHERE username = '$username'AND password='$password'"
 	or die('error querying to database');
 	$result = mysqli_query($dbc,$query);
 	$count=mysqli_num_rows($result);
 	if($count==1){
 		 $row=mysqli_fetch_array($result,MYSQLI_ASSOC);
         $id=$row['user_id'];
 		$_SESSION['user']=$id;
 		header('location: home.php');
 	}else{

 		echo 'Invalid username or password';
 	}

 } 
    mysqli_close($dbc);


 ?>