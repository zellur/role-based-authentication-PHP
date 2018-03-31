
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	

<?php  

include 'header.php';

function getUserId($username){

	$dbc=mysqli_connect('localhost','root','','qubee')
or die('Error for establishing connection');

  $query2="SELECT user_id FROM user WHERE username='$username'";
  $result=mysqli_query($dbc,$query2);
  $row=mysqli_fetch_array($result);
  $userId=$row['user_id'];
  return $userId;
}
?>
<?php 
$dbc=mysqli_connect('localhost','root','','qubee')
or die('Error for establishing connection');

if(isset($_POST['create'])){

      $username=$_POST['username'];
      $phone=$_POST['phone'];
      $email=$_POST['email'];
      $department=$_POST['department'];
      $designation=$_POST['designation'];
      $password=$_POST['password'];
      $query="INSERT INTO user(username,phone,email,department,designation,password) VALUES ('$username','$phone','$email','$department','$designation','$password')";
       $result = mysqli_query($dbc,$query);
       global $userid;
         $userid=getUserId($username);
   }

?>
<?php  

 if(isset($_POST['submit'])){
  $userid=$_POST['userid'];
  foreach ($_POST['toinsert'] as $permid) {
    $query1="INSERT INTO user_perm (userid,permid)VALUES('$userid','$permid')";
    $result=mysqli_query($dbc,$query1);
  }
  header('Location: userInfo.php');
 }

  $query3="SELECT * FROM permissions";
 $result=mysqli_query($dbc,$query3);
 while($row=mysqli_fetch_array($result)){
 	?>

 	<form action="permissions.php" method="post">

 		<?php 

	echo '<input type="checkbox" name="toinsert[]" value="'.$row['perm_id'].'">'.$row['perm_desc'].'<br>';
}
    ?>
    <input type="hidden" name="userid" value="<?php echo $userid; ?>">
     <input type="submit" name="submit" value="set permissions">
 </form>



  <?php include 'footer.php' ?>

</body>
</html>