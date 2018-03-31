
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

    <title>Admin page</title>
  </head>
  <body>
    
    <div class="wrapper">
      <header>
        <div class="logo"><img src="index.jpg" alt=""></div>
        <div class="sologan"> <h1>welcome admin</h1></div>
      </header>
      <div class="form">
    <form class="form-signin" action="permissions.php" method="post">       
      <h2 class="form-signin-heading">Create User</h2>
      <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" /><br>
      <input type="text" class="form-control" name="phone" placeholder="phone no" required=""/><br>
      <input type="email" class="form-control" name="email" placeholder="Email address" required=""/><br>
      <label for="department"><strong>Department: </strong></label>
    <select name="department"  class="form-control">
    <option selected="selected">Select Department</option>
    <option value="NOC">NOC</option>
    <option value="CCD">CCD </option>
    <option value="Employee">Admin</option>
  </select><br>
      <input type="text" class="form-control" name="designation" placeholder="Enter designation" required=""/><br>
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
      <input type="password" class="form-control" name="re-password" placeholder="re-type Password" required=""/>    
      <button class="btn btn-lg btn-primary btn-block" type="submit" name="create">Create user</button>   
    </form>
  </div>
</div>

  <footer>
      <h4>&copy; Copyright 2018, QUBEE</h4>
    </footer>
  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
