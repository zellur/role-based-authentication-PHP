
<?php 
require 'database.php';
include 'header.php';
if ( isset($_POST['submit']) && !empty($_POST['id'])) {
        
        $nameError = null;
        $emailError = null;
        $phoneError = null;
        $departmenterror=null;
        $designationerror=null;
        $passworderror=null;
        $repasserror=null;

         $id=$_POST['id'];
        $username = $_POST['username'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $department = $_POST['department'];
        $designation = $_POST['designation'];
        $password = $_POST['password'];
        $repass = $_POST['re-password'];
         
       
        
        $valid = true;
        if (empty($username)) {
            $nameError = 'Please enter Name';
            $valid = false;
        }
         
        if (empty($email)) {
            $emailError = 'Please enter Email Address';
            $valid = false;
        } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
            $emailError = 'Please enter a valid Email Address';
            $valid = false;
        }
         
        if (empty($phone)) {
            $phoneError = 'Please enter phone Number';
            $valid = false;
        }
        if (empty($department)) {
            $departmenterror = 'Please Select department';
            $valid = false;
        }
        if (empty($designation)) {
            $designationerror = 'Please enter designation';
            $valid = false;
        }
        if (empty($password)) {
            $passworderror = 'Please enter password';
            $valid = false;
        }
         if (empty($repass)) {
            $repasserror = 'Please enter password again';
            $valid = false;
        }
        
        
         if ($valid) {
            $sql = "UPDATE user  set username = '$username',phone ='$phone',email = '$email', department='$department',designation='$designation',password='$password' WHERE user_id = '$id'";
            $result=mysqli_query($dbc,$sql);
        }

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
