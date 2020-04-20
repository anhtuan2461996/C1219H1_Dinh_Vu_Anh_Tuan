<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/4/2020
  Time: 5:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <h2> Currency Converter</h2>
  <form action="converter.jsp" method="post">
    <label>Rate: </label><br>
    <input type="text" name="rate" placeholder="Rate" value="22000"><br>
    <label>Usd</label><br>
    <input type="text" name="usd" placeholder="Usd" value="0"><br>
    <input type="submit" name="submit" value="Converter">
  </form>
  </body>
</html>
