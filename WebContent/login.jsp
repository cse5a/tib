<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Infollectual BOX</title>
<!-- Place all Scripts Here -->
<script type="text/javascript">
    function goToNewPage()
    {
        var url = document.getElementById('list').value;
        if(url != 'none') {
            window.location = url;
        }
    }
</script>
</head>
<body bgcolor="#89a6e3" Style="background:url(login.jpg)">
<!-- Top Forum Banner-->
<div>
	<table width="100%" border="1" cellspacing="4" align="center">
		<tr>
			<td><h1 align="center"><font color="green">The Infollectual BOX</font></h1></td>
		</tr>
	</table>
</div>
<!-- About Section of Forum (Left Side)-->
<div>
	<table width="50%" align="Left" cellspacing="15px">
		<tr>
			<td width="50%"><center><h3><font size="5px" color="green"><u>About Us!</u></font></h3></center></td>
		</tr>
		<tr>
			<td><center><font color="orange">
			Information is necessary for everyone. 
			<br> 
			Inside an institute one must stay updated about all events or it may turn 
			<br>
			out to be a big problem for them. 
			<br><br><br>
			Though we have E-mail present, but it is seldom used by students 
			<br>
			and it is not user interactive. This calls for a 
			<br>
			solution which will be much more user friendly and serve many other 
			<br> 
			purposes for everyone concerned. 
			<br><br><br> 
			At this moment The Infollectual Box is born TIB (The Infollectual Box)
			<br> 
			is basically an informative portal 
			<br> 
			aimed for people associated with an educational institute. 
            <br>
			<br>
			Such as Students, Faculty, Exam Cell, Placement Department 
			<br>
			and other concerned departments.
			<br>

			</font>
			</center></td>
		</tr>
	</table>
</div>
<!-- Login Section of Forum (Right Side)-->
<div>
		<form action="Login" method="post">
		<table width="50%" align="right" cellspacing="15px">
		
		<tr>
			<td width="50%" valign="top" colspan="2"><center><h3><font size="5px" color="green"><u>Login!</u></font></h3></center></h3></td>
		</tr>
		<tr>
		<td><font color="orange">Enter Username: </font></td>
			<td><input type="text" size="25" maxlength="64" value="" name="uname" tabindex="1" placeholder="Enter your Username." /></td>
		</tr>
		<tr>
			<td><font color="orange">Enter Password: </font></td>
			<td><input type="password" size="25" maxlength="64" value="" name="pass" tabindex="2" placeholder="Enter your Password." /></td>
		</tr>
		<tr>
			<td align="left"><input type="submit" value="Login"></td>
		</tr>
		<tr>
			<td><font color="orange">Not Registered? Select your account type to register!</font></td>
			<td>
			<form>
			<select name="list" id="list" accesskey="target">
			<option value="none">Account Type:</option>
			<option value="studentreg.jsp">Student</option>
			<option value="facultyreg.jsp">Faculty</option>
			<option value="examcellreg.jsp">ExamCell</option>
			<option value="managementreg.jsp">Management</option>
		</select>
		<input type=button value="Go" onclick="goToNewPage()" />
			</form>
		</td>
		</tr>
		</font>
		</table>
		</form>
</div>
	
<!-- Footer (Bottom Section)-->
<div>
<table width="100%">
	<tr>
		<td><hr color="black"></td>
	</tr>
	<tr>
		<td><center><font color="green"><b>This website and its contents are copyright &copy TIB</b></font></center></td>
	</tr>
</table>
</div>

</body>
</html>
		