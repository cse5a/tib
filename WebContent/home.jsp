<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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
<hr>
<table border="0" cellpadding="2" width="100%" bgcolor="#2d64db" align="center">
<tr>
	
		<td width="15%" colspan="2" height="35%" valign="middle" align="center"> 
		Hello! ${username}
		</td>

		<td width="80%" colspan="2" height="35%" valign="middle" align="left"> 
		<a href ="home.jsp"><input type="submit" value="Home"></a>
		
		</td>
		<!-- <td width="10%" valign="middle" align="right">
		<form action="ChangePass">
		<input type="submit" value="Change Password">
		</form>
		</td> -->
		<td width="5%" valign="middle" align="right">
				<form action="Logout">
				<input type="submit" value="Logout">
				</form>
		</td>
</tr>
</table>
<hr width="100%">


<div><center>
<table width="100%" border="0" cellspacing="1" cellpadding="4"><tr><td width="25%" height="60" valign="top">
<center>
<b><font size="5" face="Calibri" color="orange"><u>Important Contacts</u></font></b>

<!-- START LEFT SIDE -->
<br>
<br>

<font><b>
<font size="4" color="Red">President</font>
<br>
<font size="2">Prof. (Dr.) Mukti Kanta Mishra</font>
<br><br>
<font size="4" color="Red">Vice-President</font>
<br>
<font size="2">Prof. D. N. Rao</font>
<br><br>
<font size="4" color="Red">Academic</font>
<br>
<font size="2">Prof. P.K. Mohanty</font>
<br><br>
<font size="4" color="Red">CSR</font>
<br>
<font size="2">Prof. Sangram Keshari Swain</font>
<br><br>

<br>
</b>
</font>
</center>

<!-- END LEFTSIDE -->

<!-- START CENTER -->

</td><td class="row2" width="50%" valign="top">
<center><b><font size="5" face="Calibri" color="orange"><u>Announcements</u></font></b>

<center><marquee direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 2, 0);">
<center><b><font size="4" face="Calibri" color="green">The Infollectual BOX Forums!</font></b></center>
<br><br>
<center>Welcome to TIB forums. All important informations and news of our college will be posted here.
<br><br>
<b><font size="4" face="Cambria" color="red">Latest News</font></b>
<br>
Will be posted here soon.
</center>
</marquee></center>
</center>

<!-- END CENTER -->

<!-- START RIGHT SIDE -->
<td height="65" width="25%" valign="top"><center><b><font size="5" face="Calibri" color="orange"><u>Links</u></font></b></center>
<center>
<br>
<font size="4" color="Red"><b>Quick Links</b></font><br>
<font>TBA</font> 
<br>
</center>
<br>
<!-- END RIGHT SIDE LINKS -->
</td></tr></table></center></div>
<center>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='NewsSection/NewsSection.jsp'>News & Announcement's</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">				
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostNNA">News & Announcement's</a></strong>
		<div>Click here if you want to know about the latest news & important Announcements!</div>
		</td>	
	</tr>
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostNII">Important Information's</a></strong>
		<div>All important information's about Centurion University can be viewed here!</div>
		</td>
	</tr>
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostNPD">Placement Details</a></strong>
		<div>All important informations regarding placement will be posted here!</div>
		</td>
		
	</tr>		
</table>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='ExaminationSection/Examination.jsp'>Examination</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostERR">Exam Rules & Regulations</a></strong>
		<div>Exam Rules & Regulations can be viewed here.</div>
		</td>
	</tr>					
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostEUS">Upcoming Exam Schedules</a></strong>
		<div>All upcoming exam schedules will be posted here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostEER">Exam Results</a></strong>
		<div>Exam results will be posted here.</div>
		</td>
	</tr>
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostEIQ">Issues/Queries</a></strong>
		<div>Exam related Issues & Queries can be asked here.</div>
		</td>
	</tr>		
</table>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='CSRSection/CSR.jsp'>Cultural, Sports & Responsibility (C.S.R.)</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostCRR">C.S.R. Rules & Regulations</a></strong>
		<div>C.S.R Rules & Regulations can be viewed here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostCUE">Upcoming C.S.R Events</a></strong>
		<div>Details of upcoming C.S.R events can be viewed here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostCA">C.S.R Archives</a></strong>
		<div>Recent C.S.R event archives can be viewed here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostCG">C.S.R Gallery</a></strong>
		<div>C.S.R event pictures & videos can be viewed here.</div>
		</td>
	</tr>	
</table>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='StudentSection/SCorner.jsp'>Student's Corner</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostSGD">General Discussion</a></strong>
		<div>General discussions can be done here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostSF">FAQ's</a></strong>
		<div>FAQ's can posted here. Faculties, Seniors will try to answer and help.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostSSG">Suggestion</a></strong>
		<div>All Suggestions can be made here.</div>
		</td>
	</tr>	
</table>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='StudySection/SSection.jsp'>Syllabus & Study Materials</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostSS">Syllabus</a></strong>
		<div>All Subject Syllabus can be found here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostSQ">Question Bank</a></strong>
		<div>Previous year questions can be found here.</div>
		</td>
	</tr>
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostSM">Study Materials</a></strong>
		<div>All Subject's study material and important notes can be found here.</div>
		</td>
	</tr>	
</table>
<table class="cat_head">
	<tr>
		<td>
		<center><h2><a href='AccountSection/Accounts.jsp'>Accounts</a></h2></center>
		</td>
	</tr>
</table>
<table class="forums" cellspacing="0" style="display: table;">	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostAI">Information</a></strong>
		<div>All accounts related informations can be found here.</div>
		</td>
	</tr>	
	<tr>
		<td class="c_mark"><img src='Icons/markernew.png' alt='Regular Forum' />
		</td>
		<td class="c_forum">
		<strong><a href="GetPostAP">Payment Issues</a></strong>
		<div>Payment related issues can be made here.</div>
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