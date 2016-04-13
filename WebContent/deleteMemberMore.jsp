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
			</ul>

		</div>
		<!-- end of templatemo_menu -->
	</div>

	<div id="templatemo_content">

			<div class="content_box">

				<td valign="top">
					<table>
						<%
							String ph = request.getParameter("memberid");

							double id = Double.parseDouble(ph);

							Connection con = DatabaseConnection.getCon();
							ResultSet rs = null;

							try {
								PreparedStatement ps;
								ps= con.prepareStatement("delete  from MEMBERLIST where ID =? ");
								ps.setDouble(1, id);
								ps.executeUpdate();

			
									out.print("Given ID for Member has been deleted");
									request.setAttribute("deleted", "Given ID for Member has been deleted");
						%>
						<jsp:forward page="showmember.jsp"></jsp:forward>
						<%

							} catch (SQLException e) {
								e.printStackTrace();
							}
							out.println("your given id is wrong");
							request.setAttribute("wrong", "your given id is wrong");
						%>
						<jsp:forward page="deleteMember.jsp"></jsp:forward>
						</table>
					 <%@ page import="java.sql.*"%>
					  <%@ page import="java.io.*"%>
					  <%@ page import="javax.servlet.*"%>
					   <%@ page import="allcode.*"%>
					</td>


				<div class="cleaner"></div>
			</div>
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