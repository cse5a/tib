<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Add</title>

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
<div id="mid">
   <a class="navbar-brand" href="admincp.jsp">Home</a>
</div>
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
<form action="../AdminAdd" method="post"> 
<div class="container">
<h2>Add new Admin</h2>

      <div class="form-group">
      <label for="uname">Username :</label><br>
      <input type="text" class="form-control" id="uname" placeholder="Enter Username" name="uname" required>
      </div>
      <div class="form-group">
      <label for="pass">Enter Password :</label><br>
      <input type="password" class="form-control" id="pass1" placeholder="Enter Password" name="pass1" required>
      </div>
      <div class="form-group">
      <label for="pass">Re-Enter Password :</label><br>
      <input type="password" class="form-control" id="pass2" placeholder="Re-Enter Password" name="pass2" required>
      </div>
      <div class="form-group">
      <label for="email">Email :</label><br>
      <input type="text" class="form-control" id="eadd1" placeholder="Enter Email" name="eadd1" required>
      </div>
      <div class="form-group">
      <label for="email">Re-Enter Email :</label><br>
      <input type="text" class="form-control" id="eadd2" placeholder="Re-Enter Email" name="eadd2" required>
      </div>
      <button type="submit" class="btn btn-default">Submit</button>

</div>
</form>
</body>
</html>