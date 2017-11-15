<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminCP</title>

<link rel="stylesheet" href="../CSS/bootstrap.css">
<script src="acp.js"></script>
<script src="bootstrap.js"></script>
<style>
  body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
     .floatleft {
    float:left;
}
.floatright {
    float:right;
}
.item {
 
  max-height: 430px;
}
</style>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username")==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
	
	%>
	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="floatright">
    <form action="../ALogout">
			<input type="submit" value="Logout">
	</form>
	  
    </div>
    <ul class="nav navbar-nav">
      <li><h1 style="color:white">Admin Dashboard</h1></li>
    </ul>
  </div>
</nav>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="adminadd.jsp">Admin Add</a>
  <a href="admindel.jsp">Admin Delete</a>
  <a href="userdel.jsp">User Delete</a>
  <a href="postmodificationsuccess.jsp">Post Modification</a>
</div>


<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>  

<div class="container">
  <h2>Welcome ${username} ! </h2>
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
        <img src="abc.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h2>"You cannot escape the responsibility of tomorrow by evading it today"</h2>
          <h3>- Abraham Lincoln</h3>
        </div>
      </div>

      <div class="item">
        <img src="abc1.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h2>We are made wise not by the recollection of our past, but by the responsibility for our future."</h2>
          <h3>- George Bernard Shaw</h3>
        </div>
      </div>
    
      <div class="item">
        <img src="abc2.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h2>"Leadership - leadership is about taking responsibility, not making excuses."</h2>
          <h3>- Mitt Romney</h3>
        </div>
      </div>
  
      <div class="item">
        <img src="abc3.jpg" alt="nature" style="width:100%;">
        <div class="carousel-caption">
          <h2>"The Price of greatness is responsibility."</h2>
          <h3>- Winston Churchill</h3>
        </div>
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <!--   <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a> -->
    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
   <!--   <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a> -->
  </div>
</div>


</body>
</html>