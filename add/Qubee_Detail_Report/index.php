<?php
$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "help_desk";
    $con = mysqli_connect($servername, $username, $password, $dbname);
    $hard_details_data = array();
    $assign_history_data = array();
    $details_data = array();
    $query = "SELECT * from hard_details";
    $query1= "SELECT * FROM assign_history,user_list where user_list.user_id=assign_history.user_id";
    $result = mysqli_query($con,$query);
    
    while($row = mysqli_fetch_assoc($result))
    {
      $hard_details_data[]=$row;
    }

    // $hard_details_data = fetchOne($result);
    $res= mysqli_query($con,$query1);
    while ($row1 = mysqli_fetch_assoc($res))
      {
        $assign_history_data[]=$row1;
      }
    

    foreach ($hard_details_data as $hard_detail) {

      $individual_device_history = array();

      foreach ($assign_history_data as $assign) {
      if($hard_detail['device_id'] == $assign['device_id'])

        array_push($individual_device_history, array(

          'assign_date' => $assign['hard_handover_date'],
          'assign_to' => $assign['first_name']
        ));
      }
      
      array_push($details_data,array(
            'device_id' => $hard_detail['device_id'],
            'device_type' => $hard_detail['device_type'],
            'status' =>$hard_detail['status'],
            'device_price' =>$hard_detail['device_price'],
            'date_of_purchase' =>$hard_detail['date_of_purchase'],
            'device_history' => $individual_device_history
      ));     
     } 
?>



<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link href="bootstrap.min.css" rel="stylesheet"/>

    <title>QUBEE Details Report</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <div class="wrapper">
      <div class="page-header text-center">
        <h1>QUBEE Details Report</h1>
      </div>
      <div class="container">
        <h4>Select Number of Rows</h4>
        <div class="form-group">
            <select name="state" id="maxRows" class="form-control" style="width:150px; height: 30px">
                <option value="5000">Show All</option>
                <option value="5">5</option>
                <option value="20">10</option>
                <option value="30">20</option>
                <option value="50">50</option>
                <option value="75">75</option>
                <option value="100">100</option>
            </select>
        </div>
        <div class="table-responsive">
        <table id="mytable" class="table table-bordered table-hover">
            <thead>
                <tr class="alert-success">
                  <th rowspan="2">Device ID</th>
                  <th rowspan="2">Device Type</th>
                  <th rowspan="2">Status</th>
                  <th rowspan="2">Price</th>
                  <th rowspan="2">Assign Date</th>
                  <th colspan="2">History</th>
                </tr>
                <tr class="alert-success">
                  <th>Date</th>
                  <th>Assign To</th>
                </tr>
            </thead>
            <tbody>
              <?php
                if (!empty($details_data)) :

                  foreach ($details_data as $Oneuser) :  
                    ?>
                  <tr  id="myRow">
                    <td rowspan="<?php echo sizeof($Oneuser['device_history'])+1?>"><?php echo $Oneuser['device_id'];?></td>
                    <td rowspan="<?php echo sizeof($Oneuser['device_history'])+1?>" ><?php echo $Oneuser['device_type'];?></td>
                    <td rowspan="<?php echo sizeof($Oneuser['device_history'])+1?>"><?php echo $Oneuser['status'];?></td>
                    <td rowspan="<?php echo sizeof($Oneuser['device_history'])+1?>"><?php echo $Oneuser['device_price'];?></td>
                    <td rowspan="<?php echo sizeof($Oneuser['device_history'])+1?>"><?php echo $Oneuser['date_of_purchase'];?></td>
                  </tr>
                    <?php
                    foreach ($Oneuser['device_history'] as $luser) :
                    ?>
                    <tr>
                      <td><?php echo $luser['assign_date'];?></td>
                      <td><?php echo $luser['assign_to'];?></td>
                    </tr>
                    <?php
                    
                    endforeach;
                    ?>
                    <!-- </tr> -->
                    <?php
                   
                  endforeach;
                endif;
              ?>
            </tbody>
        </table>
        </div>
        <div class="pagination-container">
            <nav>
                <ul class="pagination"></ul>
            </nav>
        </div>
    </div>
   </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


  </body>
</html>
   <script>
     getPagination('#mytable');

     function getPagination (table){

      $('#maxRows').on('change',function(){
        $('.pagination').html('');             
        var trnum = 0 ;                 
        var maxRows = parseInt($(this).val());      
        var totalRows = $(table+' tbody tr ').length;   
       $(table+' tr:gt(0)').each(function(){      
        trnum++;                  
        if (trnum > maxRows ){            
          
          $(this).hide();              
        }if (trnum <= maxRows ){$(this).show();}
       });                      
       if (totalRows > maxRows){            
        var pagenum = Math.ceil(totalRows/maxRows); 
                              
        for (var i = 1; i <= pagenum ;){     
        $('.pagination').append('<li data-page="'+i+'">\
                      <span>'+ i++ +'<span class="sr-only">(current)</span></span>\
                    </li>').show();
        }                     
      }                        
      $('.pagination li:first-child').addClass('active'); 
      $('.pagination li').on('click',function(e){  
        e.preventDefault();
        var pageNum = $(this).attr('data-page');  
        var trIndex = 1 ;             
        $('.pagination li').removeClass('active');   
        $(this).addClass('active');         
         $(table+' tr:gt(0)').each(function(){    
          trIndex++;                 
          
          if (trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum)-maxRows)){
            $(this).hide();   
          }else {$(this).show();}         
         });                    
          });                  

    });
                      
  } 

   </script>