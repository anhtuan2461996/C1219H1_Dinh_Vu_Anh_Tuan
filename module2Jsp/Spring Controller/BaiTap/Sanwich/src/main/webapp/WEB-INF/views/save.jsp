<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/4/2020
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Spiced with Sandwick</h1>
<%--<c:forEach items='${requestScope["condiment"]}' var="choise">--%>
<%--    <h2 >${choise}</h2>--%>
<%--</c:forEach>--%>
<c:forEach items="${condimentsArr}" var="condiment">
    <c:out value="${condiment}"/><br>
</c:forEach>
</body>
</html>
