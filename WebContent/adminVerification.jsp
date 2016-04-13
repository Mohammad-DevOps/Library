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
				alert("Fill out all Fields")
				document.F1.accountno.focus()
				return false
			}
		}

		if (isNaN(document.F1.accountno.value)) {
			alert("Accountno must  be  number & can't be null")
			document.F1.accountno.value = ""
			document.F1.accountno.focus()
			return false
		}
		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (!isNaN(document.F1.password.value)) {
			alert("Password  must  be  char's & can't be null")
			document.F1.password.value = ""
			document.F1.password.focus()
			return false
		}

		return true
	}
</SCRIPT>

</head>
<body>
	
<div id="templatemo_menu_wrapper">
		<div id="templatemo_menu">

			<ul>
				<li><a href="adminVerification.jsp">Home</a></li>
				<li><a href="admin.jsp">Adminstrator</a></li>
				<li><a href="member.jsp">Library Member</a></li>
				<li><a href="bookdetailsforbookdetails.jsp">Book Available</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
				<li><a href="Home.html">Log out</a></li>
			</ul>

		</div>
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
        
        <div class="sidebar_box">
			
           <h2>JAVA</h2>
            
            <div class="section_w250 float_l">
				<h3>Core Java</h3>            
				<p>oops is a concept of core java so. javatpoint.com ,is realy a very good website we must visit,on this web site,to know java in defth .</p>
           </div>
            
            <div class="cleaner"></div>
        
        </div><div class="sidebar_box_bottom"></div>
    
    </div> <!-- end of sidebar -->
   
	<div id="templatemo_content">

			<div class="content_box">

				<td valign="top">
					<%
						if (request.getAttribute("sorrynewmember") != null) {
							out.print("<div>");
							out.print("<font color='blue'><font size='4'>" + request.getAttribute("sorrynewmember") + "");

							out.print("</div>");
						}
					%>
					 <%
 	
 %>
					<table width="300" height="100" border="0" cellspacing="10"
						cellpadding="0" align="center">
						<%
							String username = request.getParameter("username");
							String password = request.getParameter("password");
							boolean status = VerifyAdminLogin.checkLogin(username, password);

							try {
								if (status == true) {
									out.print("Welcome    " + username);
									out.println("<br><br><a href='newmember.jsp'> Create new member </a><br>");
									out.println("<br><a href='showmember.jsp'> Show member deatils </a><br>");
									out.println("<br><a href='bookdetails.jsp'> Show Book deatils </a><br>");

									Connection con = DatabaseConnection.getCon();
									PreparedStatement ps = con.prepareStatement("");

								} else {
									out.print("Please check your username and Password");
									request.setAttribute("aa", "Please check your username and Password");
						%>
						<jsp:forward page="admin.jsp"></jsp:forward>
						<%
							}
							} catch (SQLException e) {
								e.printStackTrace();
							}

							
						%>
					</table>
					<%
						
					%> <%-- </table>--%> <%@ page import="java.sql.*"%>
					<%@ page import="java.io.*"%> <%@ page
						import="javax.servlet.*"%> <%@ page
						import="allcode.*"%> <%--</table>--%>
					
					</form>

				<div class="cleaner"></div>

	</div>

	<div id="templatemo_footer_wrapper">

		<div id="templatemo_footer">

			<ul class="footer_menu">
				<li><a href="adminVerification.jsp">Home</a></li>
				<li><a href="admin.jsp">Adminstrator</a></li>
				<li><a href="member.jsp">Library Member</a></li>
				<li><a href="bookdetailsforbookdetails.jsp">Book Available</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
			</ul>

			Copyright © 2048 <a href="#">Shahed.Sazzad.com</a>
		</div>

</body>
</html>