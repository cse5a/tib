<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.controller.GetPostNPD" %>
<%@ page import="com.bean.NTNPDBean" %>
<%@ page import="com.dao.DaoGT_NPD" %>
<%@ page import="java.util.List" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Placement Details</title>

<link rel="stylesheet" type="text/css" href="CSS/home.css" />
</head>
<body bgcolor="#89a6e3">
	<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
	
	%>
	
<table width="100%" bgcolor="#2d64db" border="0" align="center">
<tr>
<td><center><font color="green" size="30px">The Infollectual BOX</font></center></td>
</tr>
</table>
<center><hr></center>
<table border="0" cellpadding="2" width="100%" bgcolor="#2d64db" align="center">
<tr>
	
		<td width="15%" colspan="2" height="35%" valign="middle" align="center"> 
		Hello! ${username}
		</td>

		<td width="80%" colspan="2" height="35%" valign="middle" align="left"> 
		<a href ="home.jsp"><input type="submit" value="Home"></a>
		
		</td>
		
		<td width="5%" valign="middle" align="right">
				<form action="Logout">
				<input type="submit" value="Logout">
				</form>
		</td>
</tr>
</table>
<center>
<hr width="100%">
<table>
<thead>
<tr>
	<td align="right">
	<a href='NewsSection/NewT_NPD.jsp'><button type="submit" class="btn_default">New Topic</button></a>
	</td>
</tr>
</thead>
</table>
<table>
 <%
	
		
			List<NTNPDBean> mylist=(List<NTNPDBean>)request.getAttribute("beans");
			if(mylist!=null) 
			{
				out.print("<tr><td>Poster Name</td><td>Topic Title</td><td>Topic Description</td><td>Topic Tags</td><td>Post</td></tr>");
			
			
				for(NTNPDBean i : mylist)
				{
					out.print("<tr>");
					out.print("<td>"+i.getUname()+"</td>");
					out.print("<td>"+i.getTitle()+"</td>");
					out.print("<td>"+i.getDescription()+"</td>");
					out.print("<td>"+i.getTags()+"</td>");
					out.print("<td>"+i.getPost()+"</td>");
					
					out.print("</tr>");
				}
			}
			else
				out.print("<center><table class='posts' cellspacing='0'><tr class='generic'><td>No topics were found.</td></tr></table></center>");
			
			

		%>

</table>
<hr width="100%">
</center>
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