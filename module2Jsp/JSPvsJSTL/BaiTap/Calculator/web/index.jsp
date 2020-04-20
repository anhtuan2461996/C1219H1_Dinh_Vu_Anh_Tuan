<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/4/2020
  Time: 6:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Simple Calculator</h1>
  <form method="post" action="/calculate">
    <label>First operand: </label>
    <input type="text" name="firstOperand"><br>
    <label>Operator: </label>
    <select name="operator">
      <option value="+">Addition</option>
      <option value="-">Subtraction</option>
      <option value="*">Multiplication</option>
      <option value="/">Division</option>
    </select><br>
    <label>Second operand: </label>
    <input type="text" name="secondOperand"><br>
    <input type="submit" value="Calculate">
  </form>
  </body>
</html>
