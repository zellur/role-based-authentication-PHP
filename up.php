
<?php 
include 'header.php';
include 'database.php';

if (isset($_POST['permission'])) {

	$userid=$_POST['uid'];

	$sql="DELETE FROM user_perm WHERE userid='$userid'";
	$res=mysqli_query($dbc,$sql);

	foreach ($_POST['toupdate'] as $update) {

		$sql="INSERT INTO user_perm (userid,permid)VALUES('$userid','$update')";
		$result=mysqli_query($dbc,$sql);
	}

	header('Location: userInfo.php');
			
}
include 'footer.php';

 ?>