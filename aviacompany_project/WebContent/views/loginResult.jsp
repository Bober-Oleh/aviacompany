<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
<style>
body {
	background-image: url("images/air2.jpg");
}

.no-background {
	background-image: url("images/blank.jpg");
}
</style>
</head>
<body>


	<div align="center" style="padding-top: 20%">

		<%
			User registeredUser = (User) session.getAttribute("registeredUser");
		if (registeredUser != null) {
		
			out.println("<h1>Welcome!</h1>");
			//out.println(registeredUser);
			//out.println("userRole=" + registeredUser.getRole());

			User user = (User) request.getAttribute("user");
			out.println(registeredUser.getFirstName());
			out.println(registeredUser.getLastName());
			out.println("your role is " + registeredUser.getRole());
		%>
		<button onclick="location.href='<%=request.getContextPath()%>/'">Logout</button>
		<button
			onclick="location.href='<%=request.getContextPath()%>/my-account'">Next</button>
		<%
			}

		else {
			
			out.println("<p> This user is not registered. Please check your login and password.</p>");
		
		%>
		<button onclick="location.href='<%=request.getContextPath()%>/'">Back
			to main page</button>
		<%
			}
		%>
	</div>

</body>
</html>
