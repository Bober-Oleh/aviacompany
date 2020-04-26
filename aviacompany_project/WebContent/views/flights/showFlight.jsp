<%@ page import="main.java.model.Flight"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Show flight</title>
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
		<h1>Showing Flight</h1>

		<br>
		<div>
			<%
				Flight flight = (Flight) request.getAttribute("flight");
			%>
			<div>

				<table cellspacing="2" border="1" cellpadding="5" width="300">
					<tr>
						<td>Id:</td>
						<td>
							<%
								out.println(flight.getIdFlight());
							%>
						</td>
					</tr>
					<tr>
						<td>Name:</td>
						<td>
							<%
								out.println(flight.getName());
							%>
						</td>
					</tr>
					<tr>
						<td>From:</td>
						<td>
							<%
								out.println(flight.getFlightFrom());
							%>
						</td>
					</tr>
					<tr>
						<td>To:</td>
						<td>
							<%
								out.println(flight.getFlightTo());
							%>
						</td>
					</tr>
					<tr>
						<td>Date:</td>
						<td>
							<%
								out.println(flight.getDate());
							%>
						</td>
					</tr>
					<tr>
						<td>Order Status:</td>
						<td>
							<%
								out.println(flight.getOrderStatus());
							%>
						</td>
					</tr>
					<tr>
						<td>Order Id:</td>
						<td>
							<%
								out.println(flight.getIdOrder());
							%>
						</td>
					</tr>
				</table>
				
			</div>
		</div>
		<br>
		<button onclick="location.href='/aviacompany_project/flights'">All
			Flights Table</button>
	</div>
</body>
</html>
