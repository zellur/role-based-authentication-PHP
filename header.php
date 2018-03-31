<?php 
session_start();
$id=$_SESSION['user'];
$dbc=mysqli_connect('localhost','root','','qubee')
or die('Error for establishing connection');
$query="SELECT permid FROM user_perm WHERE userid='$id'";
$result = mysqli_query($dbc,$query);
$row=array();
 while($rows=mysqli_fetch_array($result)){

     array_push($row,$rows['permid']);
 }
 
 ?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="wrapper">
  
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home.php">QUBEE</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home.php"><strong>Home</strong></a></li>

        <?php 
            if(in_array(3, $row)){
         ?>
         <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>Outage</strong>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="add/index.php"><strong>Insert Outage</strong></a></li>
          <li><a href="add/Network_Outage/index.php"><strong>View Outage Report</strong></a></li>
          <li><a href="planedoutage.php"><strong>Planed/Unplaned Outage</strong></a></li>
          <li><a href="/add/Chart/index.php"><strong>Outage Minute Graph</strong></a></li>
          <li><a href="userimpact.php"><strong>User Impact Graph</strong></a></li>
        </ul>
      </li>

      <?php } ?>

      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>Top Users</strong>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="topDhk.php"><strong>Top User's DHK</strong></a></li>
          <li><a href="topCtg.php"><strong>Top User's CTG</strong></a></li>
        </ul>
      </li>

       <?php 
            if(in_array(4, $row)){
         ?>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>BTS</strong>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="btsinsert.php"><strong>BTS Insert</strong></a></li>
          <li><a href="/add/Qubee_Detail_Report/index.php"><strong>BTS Summary</strong></a></li>
        </ul>
      </li>
       <?php 
     }
           
         ?>

      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>Misc</strong>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="miscinsert.php"><strong>Misc Insert</strong></a></li>
          <li><a href="miscreport.php"><strong>View Misc Report</strong></a></li>
        </ul>
      </li>

      <?php 
            if(in_array(1, $row)){
         ?>

       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>Admin Operations</strong>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="createAccount.php"><strong>Create New User</strong></a></li>
          <li><a href="userInfo.php"><strong>View User Info.</strong></a></li>
        </ul>
      </li>

      <?php } ?>


        <li><a href="about.php"><strong>About</strong></a></li>
        <li><a href="contact.php"><strong>Contact Us</strong></a></li>

        
        <li><a href="logout.php"><strong>LOGOUT</strong></a></li>

      </ul>
    </div>
  </div>
</nav>


