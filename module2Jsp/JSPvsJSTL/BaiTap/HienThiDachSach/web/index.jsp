<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/4/2020
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Danh Sach Khach Hang</title>
  </head>
  <body>
  <%
    List<Customer> list = Customer.getList();
    request.setAttribute("listCustomers", list);
  %>
  <div class="content">
    <h2>Danh sach khach hang</h2>
    <table>
      <thead>
      <tr>
        <th>Ho Ten</th>
        <th>Ngay Sinh</th>
        <th>Dia chi</th>
        <th>Hinh Anh</th>
      </tr>
      </thead>
      <c:forEach var="customer" items="${listCustomers}">
        <tr>
          <td><c:out value="${customer.name}"></c:out></td>
          <td><c:out value="${customer.birthDay}"></c:out></td>
          <td><c:out value="${customer.email}"></c:out></td>
          <td><img src="/image/1.jpg"></td>
        </tr>
      </c:forEach>
    </table>
  </div>
  </body>
</html>
