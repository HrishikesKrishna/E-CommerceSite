<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Fitness Zone Home</title>

</head>
<body>



<jsp:include page="Header.jsp"/> 

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
      <img src="${pageContext.request.contextPath}/resources/StaticImages/spike.jpg" alt="SPIKE" style="width:100%;height:300px">
    </div>

    <div class="item">
      <img src="${pageContext.request.contextPath}/resources/StaticImages/BIOTEST.jpg" alt="BIOTEST"style="width:100%;height:300px">
    </div>

    <div class="item">
      <img src="${pageContext.request.contextPath}/resources/StaticImages/vekta.jpg" alt=""style="width:100%;height:300px">
    </div>
    
     <div class="item">
      <img src="${pageContext.request.contextPath}/resources/StaticImages/aw.jpg" alt="aw"style="width:100%;height:300px">
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
<br>
<br>

<jsp:include page="Footer.jsp"/>

</body>
</html>