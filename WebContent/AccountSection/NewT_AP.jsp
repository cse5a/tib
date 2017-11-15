<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Topic</title>

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
<form action="../NewT_AP" method="post">
<table class="posting" cellspacing="0">
<thead>
<tr>
	<th colspan="2">Posting new topic!</th>
</tr>
</thead>
<thead>
<tr>
	<th>
		<input type='hidden' name='uname' value=${username} />	
	</th>
</tr>
</thead>
<tr>
	<td class="c_desc">Topic Title</td>
	<td><input type='text' size='40' maxlength='100' name='title' value='' tabindex='1' required /></td>
</tr>
<tr>
	<td class="c_desc">Topic Description</td>
	<td><input type='text' size='40' maxlength='125' name='description' value='' tabindex='2' required /></td>
</tr>
<tr>
	<td class="c_desc">Topic Tags<small>Separated by spaces.</small></td>
	<td><input type='text' size='40' maxlength='100' name='tags' value='' tabindex='3' required /><br/><small>Optional keyword tags used to help those searching the board for your topic.</small></td>
</tr>	
<tr>
	<td class="c_desc">Text Area</td>
	<td colspan="2">
			<textarea cols='50' rows='20' name='post' tabindex='3' id="c_post-text" required></textarea>
			
	</td>
</tr>
<tr id="c_postbtn" align="center">
	<td colspan="2"><button type="submit" accesskey="s" tabindex='6' class="btn_default" >Post Topic</button>
	</td>
</tr>
</table>
</form>
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