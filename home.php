
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="slider.css">
  <title>Qubee</title>
</head>
<body>

  <?php include 'header.php'; ?>

  
  <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-12 text-center"> 
      <h1>Welcome to QUBEE</h1>
      <hr>
    </div>
  </div>
</div>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/qubee1.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          
        </div>
      </div>

      <div class="item">
        <img src="images/qubee2.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
         
        </div>
      </div>
    
      <div class="item">
        <img src="images/qubee3.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          
        </div>
      </div>

      <div class="item">
        <img src="images/qubee4.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<?php include 'footer.php'; ?>

</body>
</html>

