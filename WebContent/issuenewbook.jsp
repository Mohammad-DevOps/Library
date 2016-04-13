<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Education</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");
		if (sds == null) {
			alert("You are using a free package.\n You are not allowed to remove the tag.\n");
		}
	}
</script>

<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Fill out this Fields")
				document.F1.bookid.focus()
				return false
			}
		}

		if (isNaN(document.F1.bookid.value)) {
			alert("Accountno must  be  number & can't be null")
			document.F1.bookid.value = ""
			document.F1.bookid.focus()
			return false
		}

		return true
	}
</SCRIPT>

</head>
<body>
	<div id="templatemo_header_wrapper">
		<div id="templatemo_header">
			<div id="site_title">
				<h1>
				<img
						src="images/templatemo_logo.png" alt="Site Title" /> 
						</h1>
			</div>
			</div>
			</div>
	<!-- end of templatemo_menu_wrapper -->

	<div id="templatemo_menu_wrapper">
		<div id="templatemo_menu">

			<ul>
				<li><a href="Home.html">Home</a></li>
				<li><a href="admin.jsp">Adminstrator</a></li>
				<li><a href="member.jsp">Library Member</a></li>
				<li><a href="bookdetailsforbookdetails.jsp">Book Available</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
				<li><a href="Home.html">Log out</a></li>
			</ul>

		</div>
		<!-- end of templatemo_menu -->
	</div>
<div id="templatemo_content_wrapper">

	<div id="templatemo_sidebar">
    
    	<div class="sidebar_box">
        	
            <h2>Announcements</h2>
            
            <div class="news_box">
                <a href="#">The JavaServer Pages Standard Tag Library (JSTL) consists of custom JavaServer Pages (JSP) elements that encapsulate recurring tasks. Custom tags are reusable JSP components that contain the objects to implement the tasks. They are distributed in a tag library.</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p>
            </div>
            
            
            
            <div class="news_box">
                <a href="#">Oracle Entitlements Server contains custom tags that will call the authorization API. Developers can use these tags in JSP to build a security-based web application.</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 14, 2048</span></p>
            </div>
        
        </div>
        <div class="sidebar_box_bottom"></div>
        
        <div class="sidebar_box" style="width: 204px; height: 251px">
			
           <h2>Developer</h2>
            
            <div class="image_fl">
				<img id="no-border" src="images/IMG_0010.jpg" width="165"
						height="208" style="width: 175px; height: 187px">
			</div>
        <p align="justify">
			       ---Mohammad Shahidul Islam---
			       ---Student ID = 10580---
				</p>
            <div class="cleaner"></div>
        
        </div><div class="sidebar_box_bottom"></div>
    </div> <!-- end of sidebar -->
   
	<div id="templatemo_content">

			<div class="content_box">

				<td valign="top">

					<form name=F1 onSubmit="return dil(this)"
						action="issuenewbookMore.jsp">
						<!--  <table cellspacing="5" cellpadding="3">	 -->
						<table width="300" height="250" cellspacing="5" cellpadding="3"
							align="center">

							<%
								if (request.getAttribute("wrong") != null) {
									out.print("<div>");
									out.print("<font color='blue'><font size='4'>" + request.getAttribute("wrong") + "");

									out.print("</div>");
								}
							%>


							<tr>
								<td>BOOK ISBN:</td>
								<td><input type="text" name="bookisbn" /></td>
							</tr>

							<tr>
								<td></td>
								<td><input type="submit" value="Submit" />
								 <INPUT TYPE=RESET VALUE="CLEAR">
								</td>
							</tr>
						</table>
					</form> 
					<%@ page import="java.sql.*"%>
					<%@ page import="java.io.*"%>
				    <%@ page import="javax.servlet.*"%>
				    <%@ page import="allcode.*"%>
				   </td>

      <div class="cleaner"></div>
   </div>
		<div id="templatemo_footer_wrapper">

		<div id="templatemo_footer">

			<ul class="footer_menu">
				<li><a href="Home.html">Home</a></li>
				<li><a href="admin.jsp">Adminstrator</a></li>
				<li><a href="member.jsp">Library Member</a></li>
				<li><a href="bookdetailsforbookdetails.jsp">Book Available</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
			</ul>

			Copyright © 2048 <a href="#">Shahed.Sazzad.com</a>
			</div>
        </div>
</body>
</html>