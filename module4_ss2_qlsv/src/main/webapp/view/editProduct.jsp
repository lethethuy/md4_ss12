<%--
  Created by IntelliJ IDEA.
  User: lethethuy
  Date: 02/08/2023
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h1>Edit Product Information</h1>
<form action="admin-product" method="post">
  <label for="id">ID</label>
  <input id="id" type="hidden" name="id" readonly value="${productEdit.id}"/>
  <label for="name">Name:</label>
  <input id="name" type="text" name="name" value="${productEdit.name}" required/><br>
  <label for="price">Price:</label>
  <input id="price" type="number" name="price" value="${productEdit.price}" required/><br>
  <label for="description">Description:</label>
  <input id="description" type="text" name="description" value="${productEdit.description}" required/><br>
  <input type="submit" value="UPDATE" name ="action"/>
</form>

</body>
</html>
