<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/4/2020
  Time: 5:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<h2>Converter</h2>
<form action="/converter" onsubmit="return validateFrom()">
    <label>Rate: </label><br>
    <input type="text" name="rate" placeholder="RATE " value="22000" id="rate"><br>
    <label>USD: </label>
    <input type="text" name="usd" id="usd">
    <input type="submit" value="Result">
</form>
<script>
    function validateFrom() {
        let rate = document.getElementById("rate").value;
        let usd = document.getElementById("usd").value;
        if (rate=="0"|| usd=="0"){
            return false;
        }
    }
</script>
</body>
</html>
