<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/4/2020
  Time: 5:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Calculator</h1>
<form method="post" action="/calculated">
    <table>
        <tr>
            <td colspan="2"><input name="value1" value="${value1}"/></td>
            <td colspan="2"><input name="value2" value="${value2}"/></td>
        </tr>
        <tr>
            <td><input type="submit" name="operator" value="Addition(+)"></td>
            <td><input type="submit" name="operator" value="Subtraction(-)"></td>
            <td><input type="submit" name="operator" value="Multiplication(x)"></td>
            <td><input type="submit" name="operator" value="Division(/)"></td>
        </tr>
    </table>
</form>
<h2>Result ${operator}:   ${result}</h2>
</body>
</html>
