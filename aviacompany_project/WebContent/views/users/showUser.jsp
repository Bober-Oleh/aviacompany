<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Show user</title>
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
		<h1>Showing User</h1>
	
	<br>
	<div>
		<%
			User user = (User) request.getAttribute("user");
		%>
		<div>

			<table cellspacing="2" border="1" cellpadding="5" width="300">
				<tr>
					<td>Id:</td>
					<td>
						<%
							out.println(user.getIdUser());
						%>
					</td>
				</tr>
				<tr>
					<td>FirstName:</td>
					<td>
						<%
							out.println(user.getFirstName());
						%>
					</td>
				</tr>
				<tr>
					<td>LastName:</td>
					<td>
						<%
							out.println(user.getLastName());
						%>
					</td>
				</tr>
				<tr>
					<td>Login:</td>
					<td>
						<%
							out.println(user.getLogin());
						%>
					</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td>
						<%
							out.println(user.getPassword());
						%>
					</td>
				</tr>
				<tr>
					<td>Role:</td>
					<td>
						<%
							out.println(user.getRole());
						%>
					</td>
				</tr>
			</table>
			<%--
                        <label>Name:
                            <input type="text" name="name"><br/>
                        </label>
                        <label>From:
                            <input type="text" name="from"><br/>
                        </label>
                        <label>To:
                            <input type="text" name="to"><br/>
                        </label>
                        <label>Date:
                            <input type="text" name="date"><br/>
                        </label>
                        <button type="submit">Submit</button>
        --%>
		</div>
	</div>
	<br>
	<button onclick="location.href='<%=request.getContextPath()%>/users'">All
		Users Table</button>
</div>
</body>
</html>
