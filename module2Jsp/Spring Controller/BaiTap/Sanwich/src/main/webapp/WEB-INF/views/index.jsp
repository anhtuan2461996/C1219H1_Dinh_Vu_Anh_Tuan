<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/4/2020
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Sandwich Condiments</h1>
<form method="post" action="/save">
    <input type="checkbox" value="Lettuce" name="condiment">Lettuce
    <input type="checkbox" value="Tomato" name="condiment"/>Tomato
    <input type="checkbox" value="Mustard" name="condiment"/>Mustard
    <input type="checkbox" value="Sprouts" name="condiment"/>Sprouts
    <br>
    <input type="submit" value="Save">
</form>
</body>
</html>
