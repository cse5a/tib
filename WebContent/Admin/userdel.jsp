<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Delete</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<form method="get" action="../UserDel">
<div id="function" align="center">
<tbody><tr>
<th><b>Username :</b> </th>
<td><input type="text" size="25"  name="uname"></td>
</tr>
<tbody><tr>
<th><b>Id: </b> </th>
<td><input type="text" size="25" name="id"></td>
</tr>
<tr><td colspan="2" align="center"><button type="submit">Delete User</button></td></tr></tbody>
</table>
</div>
</form>
</body>
</html>