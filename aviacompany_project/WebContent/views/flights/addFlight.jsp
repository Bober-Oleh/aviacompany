<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add new flight</title>
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
		<h1>Adding New Flight</h1>


		<%
			User registeredUser = (User) session.getAttribute("registeredUser");
		%>

		<div>
			<%
				if (request.getAttribute("flightName") != null && request.getAttribute("flightName") != "") {
				out.println("<p>Flight '" + request.getAttribute("flightName") + "' added!</p>");
			}
			%>
			<div>

				<form method="post">
					<table>
						<tr>
							<td>Name:</td>
							<td><input type="text" name="name" class="no-background"></td>
						</tr>
						<tr>
							<td>From:</td>
							<td><input type="text" name="from" class="no-background"></td>
						</tr>
						<tr>
							<td>To:</td>
							<td><input type="text" name="to" class="no-background"></td>
						</tr>
						<tr>
							<td>Date:</td>
							<td><input type="text" name="date" class="no-background"></td>
						</tr>
						<tr>
							<td align="right" colspan="2"><input type="submit"
								value="Submit"></td>
						</tr>
					</table>

				</form>
			</div>
		</div>
		<button onclick="location.href='/aviacompany_project/flights'">All
			Flights Table</button>
	</div>
</body>
</html>