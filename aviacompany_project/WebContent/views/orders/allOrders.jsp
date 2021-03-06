<%@ page import="java.util.List"%>
<%@ page import="main.java.model.Order"%>
<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>All Orders</title>
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
	<div align="center">
		<h1>All Orders Table</h1>

		<br>
		<%
			User registeredUser = (User) session.getAttribute("registeredUser");
			if (registeredUser != null) {
				out.println("~~~~~");
				if (registeredUser.getRole().equals("user")) {
					out.println("You are simple user");
				} else if (registeredUser.getRole().equals("dispatcher")) {
					out.println("You are dispatcher");
				} else {
					out.println("You are admin");
				}
				out.println("~~~~~");
			} else {
				out.println("~~~~~");
				out.println("You didn't login!");
				out.println("~~~~~");
			}
		%>

		<div>
			<%
				if (registeredUser != null && registeredUser.getRole().equals("dispatcher")) {
			%>
			<button onclick="location.href='/aviacompany_project/add-order'">Add
				Order</button>
			<%
				}
			%>
			<button onclick="location.href='/aviacompany_project/my-account'">Back
				to main page</button>

		</div>
		<br> <br>
		<div>
			<div>

				<%
					List<Order> orders = (List<Order>) request.getAttribute("allOrders");
					if (orders != null && !orders.isEmpty()) {
				%>

				<table cellspacing="2" border="1" cellpadding="5" width="600">
					<thead>
						<tr>
							<th>IdOrder</th>
							<th>IdFlight</th>
							<th>IdPersonal</th>
							<th>Status</th>
							<%
								if (registeredUser != null && registeredUser.getRole().equals("admin")) {
							%>
							<th>Update</th>
							<th>Delete</th>
							<%
								}
							%>
						</tr>
					</thead>
					<tbody>

						<%
							if (registeredUser != null && registeredUser.getRole().equals("admin")) {
									for (Order order : orders) {
										out.println("<tr>");
										out.println("<td><a href=\"/aviacompany_project/order-by-id?id=" + order.getIdOrder() + "\">"
												+ order.getIdOrder() + "</a></td>");
										out.println("<td>" + order.getIdFlight() + "</td>");
										out.println("<td>" + order.getIdPersonal() + "</td>");
										out.println("<td>" + order.getStatus() + "</td>");
										out.println("<td><a href=\"/aviacompany_project/update-order-by-id?id=" + order.getIdOrder()
												+ "\">Update</a></td>");
										out.println("<td><a href=\"/aviacompany_project/delete-order-by-id?id=" + order.getIdOrder()
												+ "\">Delete</a></td>");
										out.println("</tr>");
									}
								} else {
									for (Order order : orders) {
										out.println("<tr>");
										out.println("<td><a href=\"/aviacompany_project/order-by-id?id=" + order.getIdOrder() + "\">"
												+ order.getIdOrder() + "</a></td>");
										out.println("<td>" + order.getIdFlight() + "</td>");
										out.println("<td>" + order.getIdPersonal() + "</td>");
										out.println("<td>" + order.getStatus() + "</td>");
										out.println("</tr>");
									}
								}
						%>

					</tbody>
				</table>

				<%
					} else {
						out.println("<p>There are no orders yet!</p>");
					}
				%>

			</div>
		</div>

		<br>

		<div>
			<%
				if (registeredUser != null && registeredUser.getRole().equals("dispatcher")) {
			%>
			<button onclick="location.href='/aviacompany_project/add-order'">Add
				Order</button>
			<%
				}
			%>
			<button onclick="location.href='/aviacompany_project/my-account'">Back
				to main page</button>

		</div>
	</div>
</body>
</html>
