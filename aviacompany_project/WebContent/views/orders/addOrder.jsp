<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add new order</title>
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
		<h1>Adding New Order</h1>


		<div>

			<%
				int idOrder = (int) request.getAttribute("idOrder");
				out.println("<p>idOrder=" + idOrder + "</p>");

				int idFlight = -1;
				int idPersonal = -1;

				if (request.getAttribute("idFlight") != null) {
					idFlight = (int) request.getAttribute("idFlight");
				}
				if (request.getAttribute("idPersonal") != null) {
					idPersonal = (int) request.getAttribute("idPersonal");
				}
			%>



			<div>

				<table>


					<tr>
						<td>IdFlight:</td>

						<%
							out.println("<td><input type=\"text\" name=\"idFlight\" value=\"" + idFlight + "\"></td>");
						%>
						<td>
							<%
								out.println("<button onclick=\"location.href='/aviacompany_project/free-flight?idOrder=" + idOrder
										+ "'\">Add</button>");
							%>

						</td>
					</tr>

					<tr>
						<td>IdPersonal:</td>

						<%
							out.println("<td><input type=\"text\" name=\"idPersonal\" value=\"" + idPersonal + "\"></td>");
						%>
						<td>
							<%
								out.println("<button onclick=\"location.href='/aviacompany_project/free-personal?idOrder=" + idOrder
										+ "'\">Add</button>");
							%>

						</td>
					</tr>

				</table>
			</div>
		</div>
		<button onclick="location.href='/aviacompany_project/orders'">All
			Orders Table</button>
	</div>
</body>
</html>




