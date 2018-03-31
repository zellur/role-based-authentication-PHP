<?php include('server.php');

	$rec = mysqli_query($conn,"SELECT * FROM info WHERE id = $id");
	$record = mysqli_fetch_array($rec);
	$down_Date = $record['down_Date'];
	$down_Time = $record['down_Time'];
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
	
?>

<!Doctype html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<h3 align="center">BTS Outage Detail</h3>  
	<table>
		<thead>
			<tr>
				
				<th bgcolor="#72e5bf">Down Date</th>
				<th bgcolor="#72e5bf">Down Time</th>
				<th bgcolor="#72e5bf">Up Date</th>
				<th bgcolor="#72e5bf">Up Time</th>
				<th bgcolor="#72e5bf">Category</th>
				<th bgcolor="#72e5bf">Site</th>
				<th bgcolor="#72e5bf">Sector</th>
				<th bgcolor="#72e5bf">Fiber Vendor</th>
				<th bgcolor="#72e5bf">Link Between</th>
				<th bgcolor="#72e5bf">Information Source</th>
				<th bgcolor="#72e5bf">Reason</th>
				<th bgcolor="#72e5bf">Specific reason</th>
				<th bgcolor="#72e5bf">Inform time</th>
				<th bgcolor="#72e5bf">Inform type</th>
				<th bgcolor="#72e5bf">Informed vendor</th>
				<th bgcolor="#72e5bf">Incident on time</th>
				<th bgcolor="#72e5bf">Inform type</th>
				<th bgcolor="#72e5bf">Informed person</th>
				<th bgcolor="#72e5bf">Inform time on resolve</th>
				<th bgcolor="#72e5bf">Inform type</th>
				<th bgcolor="#72e5bf">Informed person</th>
				<th bgcolor="#72e5bf">NOC duty Engineer</th>
				<th bgcolor="#72e5bf">Actions</th>
				
			</tr>
		</thead>
	<tbody>
	<?php 
while ($row = mysqli_fetch_array($result)){ ?>
		<tr>
			
			<td><?php echo $row['down_Date'];?></td>
			<td><?php echo $row['down_Time']; ?></td>
			<td><?php echo $row['up_Date']; ?></td>
			<td><?php echo $row['up_Time']; ?></td>
			<td><?php echo $row['category'];?></td>
			<td><?php echo $row['site']; ?></td>
			<td><?php echo $row['sector']; ?></td>
			<td><?php echo $row['fiber_Vendor']; ?></td>
			<td><?php echo $row['link_Between']; ?></td>
			<td><?php echo $row['information_Source']; ?></td>
			<td><?php echo $row['reason']; ?></td>
			<td><?php echo $row['specific_reason']; ?></td>
			<td><?php echo $row['inform_time']; ?></td>
			<td><?php echo $row['inform_type']; ?></td>
			<td><?php echo $row['informed_Vendor']; ?></td>
			<td><?php echo $row['incident_Time']; ?></td>
			<td><?php echo $row['informOfType']; ?></td>
			<td><?php echo $row['informed_Person']; ?></td>
			<td><?php echo $row['inform_TimeonResolve']; ?></td>
			<td><?php echo $row['Type_Of_inform']; ?></td>
			<td><?php echo $row['informedToPerson']; ?></td>
			<td><?php echo $row['noc_DutyEngineer']; ?></td>
			<td>
				<a href="detail.php?del=<?php echo $row['id'] ;?>">Delete</a>
			</td>
			
  <?php 
	} 
   ?>
	</tbody>
	</table>
	</body>
	</html>