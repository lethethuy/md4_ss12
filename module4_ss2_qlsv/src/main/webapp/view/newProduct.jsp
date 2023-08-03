<%--
  Created by IntelliJ IDEA.
  User: lethethuy
  Date: 02/08/2023
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add new Product</h1>
<form action="/admin-product" method="post">
  <label for="name">Name</label>
  <input type="text" id ="name" name="name">
  <label for="price">Price</label>
  <input type="number" min="0" id="price" name="price">
  <label for="name">Description</label>
  <input type="text" id ="description" name="description">
  <input type="submit" value="ADD" name="action"/>
</form>

</body>
</html>
