<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Update user</title>
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
		<h1>Updating User</h1>
	

	<div>
		<%
			User userToUpdate = (User) request.getAttribute("userToUpdate");
		%>
		<div>

			<form method="post">
				<table>
					<tr>
						<td>FirstName:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"firstName\" value=\"" + userToUpdate.getFirstName() + "\">");
							%>
						</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"id\" value=\"" + userToUpdate.getIdUser() + "\" hidden>");
							%>
						</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"lastName\" value=\"" + userToUpdate.getLastName() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td>Login:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"login\" value=\"" + userToUpdate.getLogin() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td>Password:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"password\" value=\"" + userToUpdate.getPassword() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td>Role:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"role\" value=\"" + userToUpdate.getRole() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td align="right" colspan="2"><input type="submit"
							value="Submit"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<button onclick="location.href='<%=request.getContextPath()%>/users'">All
		Users Table</button>
</div>
</body>
</html>
