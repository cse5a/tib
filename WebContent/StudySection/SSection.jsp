<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Syllabus & Study Materials</title>
<link rel="stylesheet" type="text/css" href="../CSS/home.css" />
</head>
<body bgcolor="#89a6e3">
	
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username")==null)
	{
		response.sendRedirect("../login.jsp");
	}
	
	%>

<table width="100%" bgcolor="#2d64db" border="0" align="center">
<tr>
<td><center><font color="green" size="30px">The Infollectual BOX</font></center></td>
</tr>
</table>
<hr>
<table border="0" cellpadding="2" width="100%" bgcolor="#2d64db" align="center">
<tr>
	
		<td width="15%" colspan="2" height="35%" valign="middle" align="center"> 
		Hello! ${username}
		</td>

		<td width="80%" colspan="2" height="35%" valign="middle" align="left"> 
		<a href ="../home.jsp"><input type="submit" value="Home"></a>
		
		</td>
		
		<td width="5%" valign="middle" align="right">
				<form action="../Logout">
				<input type="submit" value="Logout">
				</form>
		</td>
</tr>
</table>
<hr width="100%">


<center>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='../StudySection/SSection.jsp'>Syllabus & Study Materials</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">	
	<tr>
		<td class="c_mark"><img src='../Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="../GetPostSS">Syllabus</a></strong>
		<div>All Subject Syllabus can be found here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='../Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="../GetPostSQ">Question Bank</a></strong>
		<div>Previous year questions can be found here.</div>
		</td>
	</tr>
	<tr>
		<td class="c_mark"><img src='../Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="../GetPostSM">Study Materials</a></strong>
		<div>All Subject's study material and important notes can be found here.</div>
		</td>
	</tr>	
</table>
</center>
<hr width="100%">
<!-- Footer (Bottom Section)-->
<div>
<center><table width="100%">
	<tr>
		<td><center><font size="4px" color="green"><b>This website and its contents are copyright &copy TIB</b></font></center></td>
	</tr>
</table>
</center>
</div>
</body>
</html>