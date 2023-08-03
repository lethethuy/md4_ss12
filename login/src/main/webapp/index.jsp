<%--
  Created by IntelliJ IDEA.
  User: lethethuy
  Date: 01/08/2023
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <style type="text/css">
        .login {
            height:230px; width:300px;
            margin:0;
            padding:10px;
            border:1px #CCC solid;

        </head>
        }
        .login input {
            padding:5px; margin:5px
        }
    </style>
</head>
<body>
<form method="post" action="/LoginServlet">
    <div class="login">
        <h2>Login</h2>
        <input type="text" name="username" size="30"  placeholder="username" />
        <input type="password" name="password" size="30" placeholder="password" />
        <input type="submit" value="Sign in"/>
    </div>
</form>

<body>

</body>
</html>
