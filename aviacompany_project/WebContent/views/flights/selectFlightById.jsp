<%@ page import="main.java.model.Flight"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Select flight</title>
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
		<h1>Selecting Flight by Id</h1>


		<div>
			<div>
				<form method="post">
					<table>
						<tr>
							<td>Flight Id:</td>
							<td><input type="text" name="id"></td>
						</tr>

						<tr>
							<td align="right" colspan="2"><input type="submit"
								value="Find Flights"></td>
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
