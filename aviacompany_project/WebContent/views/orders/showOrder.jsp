<%@ page import="main.java.model.Order"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Show order</title>
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
		<h1>Showing Order</h1>
	
	<br>
	<div>
		<%
			Order order = (Order) request.getAttribute("order");
		%>
		<div>

			<table cellspacing="2" border="1" cellpadding="5" width="300">
				<tr>
					<td>Id:</td>
					<td>
						<%
							out.println(order.getIdOrder());
						%>
					</td>
				</tr>
				<tr>
					<td>IdFlight:</td>
					<td>
						<%
							out.println(order.getIdFlight());
						%>
					</td>
				</tr>
				<tr>
					<td>IdPersonal:</td>
					<td>
						<%
							out.println(order.getIdPersonal());
						%>
					</td>
				</tr>
				<tr>
					<td>Status:</td>
					<td>
						<%
							out.println(order.getStatus());
						%>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<br>
	<button onclick="location.href='/aviacompany_project/orders'">All
		Orders Table</button>
</div>
</body>
</html>
