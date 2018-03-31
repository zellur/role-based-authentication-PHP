<?php
 $down_Date="";
 $down_Time="";
 $up_Date="";
 $up_Time="";
 $category = "";
 $site = "";
 $sector = "";
 $fiber_Vendor = "";
 $link_Between = "";
 $information_Source = "";
 $reason = "";
 $specific_reason = "";
 $inform_time ="";
 $inform_type = "";
 $informed_Vendor = "";
 $incident_Time ="";
 $informOfType ="";
 $informed_Person = "";
 $inform_TimeonResolve = "";
 $Type_Of_inform = "";
 $informedToPerson = "";
 $noc_DutyEngineer = "";
 $id = 0;
 $edit_state = false;


$conn = mysqli_connect('localhost','root','','qubee');

//update
if(isset($_POST['update'])){
 $down_Date = $_POST['down_Date'];
 $down_Time = $_POST['down_Time'];
 $up_Date = $_POST['up_Date'];
 $up_Time = $_POST['up_Time'];
 $category = $_POST['category'];
 $site = $_POST['site'];
 $sector = $_POST['sector'];
 $fiber_Vendor = $_POST['fiber_Vendor'];
 $link_Between = $_POST['link_Between'];
 $information_Source = $_POST['information_Source'];
 $reason = $_POST['reason'];
 $specific_reason = $_POST['specific_reason'];
 $inform_time = $_POST['inform_time'];
 $inform_type = $_POST['inform_type'];
 $informed_Vendor = $_POST['informed_Vendor'];
 $incident_Time = $_POST['incident_Time'];
 $informOfType = $_POST['informOfType'];
 $informed_Person = $_POST['informed_Person'];
 $inform_TimeonResolve = $_POST['inform_TimeonResolve'];
 $Type_Of_inform = $_POST['Type_Of_inform'];
 $informedToPerson = $_POST['informedToPerson'];
 $noc_DutyEngineer = $_POST['noc_DutyEngineer'];
 
 $query = "UPDATE info SET * WHERE id=$id";
var_dump($query);
die();
 mysqli_query($conn,$query);
 header('location:index.php');

}

$result = mysqli_query($conn,"select * from info"); 
?>