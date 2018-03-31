<?php 
//index.php
$connect = mysqli_connect("localhost", "root", "", "qubee");
$query = "SELECT * FROM weekly_reports";
$result = mysqli_query($connect, $query);
$chart_data = '';
while($row = mysqli_fetch_array($result))
{
 $chart_data .= "{ Date:'".$row["Date"]."', low_Impact_outage_Mins:".$row["low_Impact_outage_Mins"].", High_Impact_outage_Mins:".$row["High_Impact_outage_Mins"].", Very_High_Impact_outage_Mins:".$row["Very_High_Impact_outage_Mins"]."}, ";
}
$chart_data = substr($chart_data, 0, -2);
?>


<!DOCTYPE html>
<html>
 <head>
	<title>Weekly Report | QUBEE</title>
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

 </head>
 <body>
  <br /><br />
  <div class="container" style="width:900px;">
   <h2 align="center">Weekly Report | QUBEE</h2>
   <br /><br />
   <div id="chart" style="align:center"></div>
  </div>
 </body>
</html>

<script>
Morris.Bar({
 element : 'chart',
 data:[<?php echo $chart_data; ?>],
 xkey:'Date',
 ykeys:['low_Impact_outage_Mins', 'High_Impact_outage_Mins', 'Very_High_Impact_outage_Mins'],
 labels:['Low Impact outage Mins', 'High Impact outage Mins', 'Very High Impact Outage Mins'],
 hideHover:'auto',
 stacked:true
});
</script>