<?php include('server.php');
if(isset($_GET['edit'])) {
	$id = $_GET['edit'];
	$edit_state = true;
	$rec = mysqli_query($conn,"SELECT * FROM info WHERE id = $id");
	$record = mysqli_fetch_array($rec);
	$down_Date = $record['down_Date'];
	$down_Time = $record['down_Time'];
	$up_Date = $record['up_Date'];
	$up_Time = $record['up_Time'];
	$category = $record['category'];
	$site = $record['site'];
	$sector = $record['sector'];
	$fiber_Vendor = $record['fiber_Vendor'];
	$link_Between = $record['link_Between'];
	$information_Source = $record['information_Source'];
	$reason = $record['reason'];
	$specific_reason = $record['specific_reason'];
	$inform_time= $record['inform_time'];
	$inform_type = $record['inform_type'];
	$informed_Vendor = $record['informed_Vendor'];
	$incident_Time = $record['incident_Time'];
	$informOfType = $record['informOfType'];
	$informed_Person = $record['informed_Person'];
	$inform_TimeonResolve= $record['inform_TimeonResolve'];
	$Type_Of_inform = $record['Type_Of_inform'];
	$informedToPerson = $record['informedToPerson'];
	$noc_DutyEngineer = $record['noc_DutyEngineer'];
	$id = $record['id'];
	
	}
	
?>
<!Doctype html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
	
</head>

<body>
<?php include '../header.php'; ?>

	
	<h3>Qubee's Daily Data Entry</h3>
	
	<form method="post" action="server.php">
	<input type = "hidden" name = 'id' " value="<?php echo $id; ?>" /> 
		<table>
	<tr>
		<td><div class="control-group">
		<label>Down date</label>
		<input type="date" type="mydate" name="down_Date" value="<?php echo $down_Date; ?>"></td>
		</div>
		
		<td><div class="input-group5">
		<label>Down time</label>
		<input type="time" name="down_Time" value="<?php echo $down_Time; ?>"></td>
		</div>
		
		<td><div class="input-group2">
		<label>Up date</Name>
		<input type="date"  type="mydate" name="up_Date" value="<?php echo $up_Date; ?>"></td>
		</div>
		
		<td><div class="input-group5">
		<label>Up Time</label>
		<input type="time" name="up_Time" value="<?php echo $up_Time; ?>"></td>
		</div>
		
		<td><div class="input-group3">
		<label>Category</label>
		<select name="category">
			<option value=""></option>
			<option <?php echo($category=='Site')?"selected":""?>>Site</option>
			<option <?php echo($category=='Link')?"selected":""?>>Link</option>
			<option <?php echo($category=='Site+Link')?"selected":""?>>Site+Link</option>
			
			</select></td></tr>
		</div>
		
	<tr>
		<td><div class="input-group4">
		<label>Site</label>
		<input type="text" name="site" value="<?php echo $site; ?>"></td>
		</div>
	
		<td><div class="input-group5">
		<label>Sector</label>
		<input type="text" name="sector" value="<?php echo $sector; ?>"></td>
		
		</div>
		
		
		<td><div class="input-group6">
		<label>Fiber Vendor</label>
		<select name="fiber_Vendor">
			<option value=""></option>
			<option <?php echo($fiber_Vendor=='Summit')?"selected":""?>>Summit</option>
			<option <?php echo($fiber_Vendor=='Telnet')?"selected":""?>>Telnet</option>
			<option <?php echo($fiber_Vendor=='F@H')?"selected":""?>>F@H</option>
			</select></td>
		
		</div>
		
	<td><div class="input-group7">
		<label>Link Between</label>
		<input type="text" name="link_Between" value="<?php echo $link_Between; ?>"></td>
		</div>
		
		<td><div class="input-group8">
		<label>Information Source</label>
		<input type="text" name="information_Source" value="<?php echo $information_Source; ?>"></td></tr>
		</div>
		
	<tr>
		<td><div class="input-group9">
		<label>Reason</label>
		<select name="reason">
			<option value=""></option>
			<option <?php echo($reason=='Power problem')?"selected":""?>>Power problem</option>
			<option <?php echo($reason=='Battery problem')?"selected":""?>>Battery problem</option>
			<option <?php echo($reason=='Planned work')?"selected":""?>>Power problem</option>
			</select></td>
	</div>
	
		
		<td><div class="input-group10">
		<label>Specific reason</label>
		<input type="text" name="specific_reason" value="<?php echo $specific_reason; ?>"></td>
		</div>
		
		<td><div class="input-group11">
		<label>Inform time</label>
		<input type="time" name="inform_time" value="<?php echo $inform_time; ?>"></td>
		</div>
		
		<td><div class="input-group12">
		<label>Inform type</label>
		<select name="inform_type">
			<option value=""></option>
			<option <?php echo($inform_type=='Phone')?"selected":""?>>Phone</option>
			<option <?php echo($inform_type=='Email')?"selected":""?>>Email</option>
			<option <?php echo($inform_type=='Phone+Mail')?"selected":""?>>Phone+Mail</option>
			</select></td>
		</div>
	
		<td><div class="input-group13">
		<label>Informed vendor</label>
		<input type="text" name="informed_Vendor" value="<?php echo $informed_Vendor; ?>"></td></tr>
		</div>
		
	<tr>
		<td><div class="input-group14">
		<label>Incident on time</label>
		<input type="time" name="incident_Time" value="<?php echo $incident_Time; ?>"></td>
		</div>
		
		<td><div class="input-group15">
		<label>Inform type</label>
		<select name="informOfType">
			<option value=""></option>
			<option <?php echo($informOfType=='Phone')?"selected":""?>>Phone</option>
			<option <?php echo($informOfType=='Email')?"selected":""?>>Email</option>
			<option <?php echo($informOfType=='Phone')?"selected":""?>>Phone+Mail</option>
			</select></td>
		
		</div>
		
		<td><div class="input-group16">
		<label>Informed person</label>
		<input type="text" name="informed_Person" value="<?php echo $informed_Person; ?>"></td>
		</div>
		
	
		<td><div class="input-group17">
		<label>Inform time on resolve</label>
		<input type="time" name="inform_TimeonResolve" value="<?php echo $inform_TimeonResolve; ?>"></td>
		</div>
		
		<td><div class="input-group18">
		<label>Inform type</label>
		<select name="Type_Of_inform">
			<option value=""></option>
			<option <?php echo($Type_Of_inform=='Phone')?"selected":""?>>Phone</option>
			<option <?php echo($Type_Of_inform=='Email')?"selected":""?>>Email</option>
			<option <?php echo($Type_Of_inform=='Phone')?"selected":""?>>Phone+Mail</option>
			</select></td></tr>
		
		</div>
	
		<td><div class="input-group19">
		<label>Informed person</label>
		<input type="text" name="informedToPerson" value="<?php echo $informedToPerson; ?>"></td>
		</div>
		
		<td><div class="input-group20">
		<label>NOC duty Engineer</label>
		<input type="text" name="noc_DutyEngineer" value="<?php echo $noc_DutyEngineer; ?>"></td>
		</div>
		</table>
		<div class="input-group"> 
		<?php if($edit_state == false) { 
			echo '<button type="save" name="save" class="btn">Save</button>';
		}
		else{
			echo '<button type="update" name="update" class="btn">Update</button>';
		}
		?> 
		</div>
			
</form>

	
<?php include '../footer.php' ;?>
	</body>
	</html>
	
	