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
		<h1>Selecting Flight</h1>


		<div>
			<div>
				<form method="post">
					<table>
						<tr>
							<td>From:</td>
							<td><input type="text" name="from"></td>
						</tr>
						<tr>
							<td>To:</td>
							<td><input type="text" name="to"></td>
						</tr>
						<tr>
							<td>Date:</td>
							<td><input type="text" name="date"></td>
						</tr>
						<tr>
							<td align="right" colspan="2"><input type="submit"
								value="Find Flights"></td>
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
	</div>
</body>
</html>
