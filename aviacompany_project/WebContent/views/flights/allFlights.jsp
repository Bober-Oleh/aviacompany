<%@ page import="java.util.List"%>
<%@ page import="main.java.model.Flight"%>
<%@ page import="main.java.model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>All Flights</title>
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
		<h1>All Flights Table</h1>

		<br>

		<%
			User registeredUser = (User) session.getAttribute("registeredUser");
			if (registeredUser != null) {
				out.println("~~~~~");
				//out.println(registeredUser);
				//out.println("UserId=" + registeredUser.getIdUser() + " role= " + registeredUser.getRole());
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
			<button onclick="location.href='/aviacompany_project/flight-by-id'">Select
				Flight by Number</button>

			<button
				onclick="location.href='/aviacompany_project/flight-by-from-to-date'">Select
				Flight by Parameters</button>

			<button
				onclick="location.href='/aviacompany_project/sort-flights-id'">Sort
				By Id</button>

			<button
				onclick="location.href='/aviacompany_project/sort-flights-name'">Sort
				By Name</button>

			<button onclick="location.href='/aviacompany_project/my-account'">Back
				to main page</button>

			<%
				if (registeredUser != null && registeredUser.getRole().equals("admin")) {
			%>
			<button onclick="location.href='/aviacompany_project/add-flight'">Add
				Flight</button>
			<%
				}
			%>
		</div>

		<br> <br>
		<div>
			<div>

				<%
					List<Flight> flights = (List<Flight>) request.getAttribute("allFlights");
					if (flights != null && !flights.isEmpty()) {
				%>

				<table cellspacing="2" border="1" cellpadding="5" width="600">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>From</th>
							<th>To</th>
							<th>Date</th>
							<th>Flight Status</th>
							<th>Order Id</th>
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
									for (Flight flight : flights) {
										out.println("<tr>");
										out.println("<td><a href=\"/aviacompany_project/flight-by-id?id=" + flight.getIdFlight() + "\">"
												+ flight.getIdFlight() + "</a></td>");
										out.println("<td>" + flight.getName() + "</td>");
										out.println("<td>" + flight.getFlightFrom() + "</td>");
										out.println("<td>" + flight.getFlightTo() + "</td>");
										out.println("<td>" + flight.getDate() + "</td>");
										out.println("<td>" + flight.getOrderStatus() + "</td>");
										out.println("<td>" + flight.getIdOrder() + "</td>");
										out.println("<td><a href=\"/aviacompany_project/update-flight-by-id?id=" + flight.getIdFlight()
												+ "\">Update</a></td>");
										out.println("<td><a href=\"/aviacompany_project/delete-flight-by-id?id=" + flight.getIdFlight()
												+ "\">Delete</a></td>");
										out.println("</tr>");
									}
								} else {
									for (Flight flight : flights) {
										out.println("<tr>");
										out.println("<td><a href=\"/aviacompany_project/flight-by-id?id=" + flight.getIdFlight() + "\">"
												+ flight.getIdFlight() + "</a></td>");
										out.println("<td>" + flight.getName() + "</td>");
										out.println("<td>" + flight.getFlightFrom() + "</td>");
										out.println("<td>" + flight.getFlightTo() + "</td>");
										out.println("<td>" + flight.getDate() + "</td>");
										out.println("<td>" + flight.getOrderStatus() + "</td>");
										out.println("<td>" + flight.getIdOrder() + "</td>");

									}
								}
						%>

					</tbody>
				</table>

				<%
					} else {
						out.println("<p>There are no flights yet!</p>");
					}
				%>

			</div>
		</div>

		<br>

		<div>
			<button onclick="location.href='/aviacompany_project/flight-by-id'">Select
				Flight by Number</button>

			<button
				onclick="location.href='/aviacompany_project/flight-by-from-to-date'">Select
				Flight by Parameters</button>

			<button
				onclick="location.href='/aviacompany_project/sort-flights-id'">Sort
				By Id</button>

			<button
				onclick="location.href='/aviacompany_project/sort-flights-name'">Sort
				By Name</button>

			<button onclick="location.href='/aviacompany_project/my-account'">Back
				to main page</button>

			<%
				if (registeredUser != null && registeredUser.getRole().equals("admin")) {
			%>
			<button onclick="location.href='/aviacompany_project/add-flight'">Add
				Flight</button>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>
