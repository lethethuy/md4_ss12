<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lethethuy
  Date: 02/08/2023
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý sản phẩm</title>
  <style>
    h1,table{
      width: 60%;
      text-align: center;
      margin: 0 auto 50px;
    }
  </style>
</head>
<body>
<h1>Quản lý sản phẩm</h1>
<a href="./view/newProduct.jsp">ADD</a>
<table border="10" cellpadding="10" cellspacing="20" style="text-align: center">
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Descripton</th>
    <th colspan="2">Action</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${product}" var="p">
    <tr>
      <td>${p.id}</td>
      <td>${p.name}</td>
      <td>${p.price}</td>
      <td>${p.description}</td>
      <td><a href="/admin-product?action=EDIT&id=${p.id}">Edit</a></td>
      <td><a onclick="return confirm('Do you want delete this student?')" href="/admin-product?action=DELETE&id=${p.id}">Delete</a></td>

    </tr>

  </c:forEach>
  </tbody>
</table>
</body>
</html>
