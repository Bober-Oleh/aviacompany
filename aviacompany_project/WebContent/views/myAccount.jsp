<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Aviacompany</title>
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
		<h1>Welcome to our Aviacompany!</h1>



		<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		%>

		<p>
			<button onclick="location.href='<%=request.getContextPath()%>'">Logout</button>
		</p>
		<p>
			<button
				onclick="location.href='<%=request.getContextPath()%>/flights'">Show
				All Flights</button>

		</p>
		<p>
			<button
				onclick="location.href='<%=request.getContextPath()%>/orders'">
				Show All Orders</button>
		</p>
		<p>
			<button
				onclick="location.href='<%=request.getContextPath()%>/personals'">Show
				All Personals</button>
		</p>
		<p>
			<button
				onclick="location.href='<%=request.getContextPath()%>/persons '">Show
				All Persons</button>
		</p>
		<p>
			<button
				onclick="location.href='<%=request.getContextPath()%>/users '">
				Show All Users</button>
		</p>

	</div>
</body>
</html>
