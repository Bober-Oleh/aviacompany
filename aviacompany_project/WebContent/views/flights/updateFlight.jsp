<%@ page import="main.java.model.Flight"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Update flight</title>
<style>
body {
	background-image: url("images/airplane.jpg");
}

.no-background {
	background-image: url("images/blank.jpg");
}
</style>
</head>

<body>
	<div>
		<h1>Updating Flight</h1>
	</div>

	<div>
		<%
			Flight flightToUpdate = (Flight) request.getAttribute("flightToUpdate");
		%>
		<div>

			<form method="post">
				<table>
					<tr>
						<td>Name:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"name\" value=\"" + flightToUpdate.getName() + "\">");
							%>
						</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"id\" value=\"" + flightToUpdate.getIdFlight() + "\" hidden>");
							%>
						</td>
					</tr>
					<tr>
						<td>From:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"from\" value=\"" + flightToUpdate.getFlightFrom() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td>To:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"to\" value=\"" + flightToUpdate.getFlightTo() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td>Date:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"date\" value=\"" + flightToUpdate.getDate() + "\">");
							%>
						</td>
					</tr>
					<tr>
						<td>Order Status:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"orderStatus\" value=\"" + flightToUpdate.getOrderStatus() + "\">");
							%> 
						</td>
					</tr>
					<tr>
						<td>Order Id:</td>
						<td>
							<%
								out.println("<input type=\"text\" name=\"idOrder\" value=\"" + flightToUpdate.getIdOrder() + "\">");
							%> 
						</td>
					</tr>
					<tr>
						<td align="right" colspan="2"><input type="submit"
							value="Submit"></td>
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
			</form>
		</div>
	</div>
	<button onclick="location.href='/aviacompany_project/flights'">All
		Flights Table</button>

</body>
</html>
