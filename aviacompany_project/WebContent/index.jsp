
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
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
<h1>Aviacompany</h1>

<form action="/aviacompany_project/login" method="POST">
    <p>
        <input type="text" name="userLogin" placeholder="login"/>
    </p>
    <p>
        <input type="password" name="userPassword"
               placeholder="password"/>
    </p>
    <p>
       <input type="submit" value="send"></input>
    </p>
</form>
<button onclick="location.href='/aviacompany_project/registration'">Registration</button>
</div>
</body>
</html>
