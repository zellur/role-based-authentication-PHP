
<?php 

  require 'database.php';

         $in=$_GET['id'];
        $sql = "SELECT * FROM user where user_id = '$in'";
        $result=mysqli_query($dbc,$sql);

        while($row=mysqli_fetch_array($result)){

        $username=$row['username'];
        $phone=$row['phone'];
        $email=$row['email'];
        $department=$row['department'];
        $designation=$row['designation'];
        $password=$row['password'];
        }


        $query = "SELECT * FROM user_perm WHERE userid='$in'";
            $result1=mysqli_query($dbc,$query);
            $permid=array();
            while($row=mysqli_fetch_array($result1)){

                array_push($permid, $row['permid']);

            }
   ?>

   <!DOCTYPE html>
   <html lang="en">
   <head>
       <meta charset="UTF-8">
       <title>update user</title>
   </head>
   <body>
    <?php include 'header.php';?>


    <form class="form-signin" action="setpermission.php" method="post">       
      <h2 class="form-signin-heading">Update User</h2>

       <input type="hidden" name="id" value="<?php echo $_GET['id'];?>"/>
      <input type="text" class="form-control" name="username" placeholder="Username" value="<?php echo !empty($username)?$username:'';?>" required="" autofocus="" /><br>
      <input type="text" class="form-control" name="phone" value="<?php echo !empty($phone)?$phone:'';?>" placeholder="phone no" required=""/><br>
      <input type="email" class="form-control" name="email" value="<?php echo !empty($email)?$email:'';?>" placeholder="Email address" required=""/><br>
      <label for="department"><strong>Department: </strong></label>
    <select name="department"  class="form-control">
    <option selected="selected"><?php echo !empty($department)?$department:'';?></option>
    <option value="NOC">NOC</option>
    <option value="CCD">CCD </option>
    <option value="Employee">ADMIN</option>
  </select><br>
      <input type="text" class="form-control" name="designation" value="<?php echo !empty($designation)?$designation:'';?>" placeholder="Enter designation" required=""/><br>
      <input type="password" class="form-control" name="password" value="<?php echo !empty($password)?$password:'';?>" placeholder="Password" required=""/>
      <input type="password" class="form-control" name="re-password" placeholder="re-type Password" required=""/> <br>
      <label for="toupdate[]">Set Permission's: </label><br>


      <?php 

      $query2="SELECT * FROM permissions";
            $result2=mysqli_query($dbc,$query2);

            while($row2=mysqli_fetch_array($result2)){


                ?>


                     <input type="checkbox" name="toupdate[]" value=" <?php echo $row2['perm_id']; ?> " <?php if(in_array($row2['perm_id'], $permid)){echo "checked";}?>> <?php echo $row2['perm_desc']; ?><br>
                      

                <?php 


            }


            ?>

            <input type="hidden" name="uid" value="<?php echo $in; ?>"><br>

      <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Update User</button>   
    </form>



    <?php include 'footer.php'; ?>
       
   </body>
   </html>