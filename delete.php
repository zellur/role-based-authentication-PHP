
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Delete User</title>
</head>
<body>

 <form action="delete.php" method="post">
                      <input type="hidden" name="id" value="<?php echo $_GET['id'];?>"/>
                      <p class="alert alert-error">Are you sure to delete ?</p>
                      <div class="form-actions">
                          <button type="submit" name="submit" class="btn btn-danger">Yes</button>
                          <a class="btn" href="userInfo.php">No</a>
                        </div>
                    </form>
	<?php 

	
    

	if (isset($_POST['submit'])) {
	
	if(!empty($_POST['id'])){

		$dbc=mysqli_connect('localhost','root','','qubee')
		or die('Error connecting database');

		$id=$_POST['id'];
		$query="DELETE FROM user WHERE user_id='$id'";
		$result=mysqli_query($dbc,$query);
		$sql="DELETE FROM user_perm WHERE userid='$id'";
		$sucess=mysqli_query($dbc,$sql);
		header('Location: userInfo.php');

		}
	}


	 ?>

	
	
</body>
</html>