<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2020
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
  <style type="text/css">
    login{
      height: 180px;width: 230px;
      margin: 0;
      padding: 10px;
      border: 1px #CCC solid;
    }
    login input{
      padding: 5px;margin: 5px;
    }
  </style>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<%--  $END$--%>
  <form method="post" action="/login">
      <dir class="login">
        <h2>Login</h2>
        <input type="text" name="username" size="30" placeholder="username">
        <input type="password" name="password"size="30" placeholder="password">
        <input type="submit" value="Sign in"/>
      </dir>
    </form>
  </body>
</html>
