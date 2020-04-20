<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/4/2020
  Time: 5:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%! Map<String,String> dic = new HashMap<>();%>
    <% dic.put("hello","xin chao");
        dic.put("how","the nao");
        dic.put("book","sach vo");
        dic.put("computer","may tinh");
        String search = request.getParameter("search");
        String result = dic.get(search);
        if (result != null){
            out.print("Word: "+ search);
            out.print("Result: " + result);
        }else {
            out.print("Not found");
        }
    %>
    </body>
</html>
