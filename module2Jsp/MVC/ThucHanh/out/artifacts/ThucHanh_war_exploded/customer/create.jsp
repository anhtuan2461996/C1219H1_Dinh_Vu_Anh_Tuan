<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/4/2020
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Customer </title>
    <style>
        message{
            color: green;
        }
    </style>
</head>
<body>
<h1>Create new Customer</h1>
<p>
    <c:if test ='${requestScope["message"]}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="name" id="email"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="name" id="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
