<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add new person</title>
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
		<h1>Adding New Person</h1>

		<%
			User registeredUser = (User) session.getAttribute("registeredUser");
		%>
		<div>
			<%
				if (request.getAttribute("lastName") != null && request.getAttribute("lastName") != "") {
				out.println("<p>Person '" + request.getAttribute("lastName") + "' added!</p>");
			}
			%>
			<div>

				<form method="post">
					<table>
						<tr>
							<td>FirstName:</td>
							<td><input type="text" name="firstName"
								class="no-background"></td>
						</tr>
						<tr>
							<td>LastName:</td>
							<td><input type="text" name="lastName" class="no-background"></td>
						</tr>
						<tr>
							<td>Profession:</td>
							<td><input type="text" name="profession"
								class="no-background"></td>
						</tr>

						<tr>
							<td align="right" colspan="2"><input type="submit"
								value="Submit"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<button onclick="location.href='/aviacompany_project/persons'">All
			Persons Table</button>
	</div>
</body>
</html>