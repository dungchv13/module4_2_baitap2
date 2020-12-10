<%--
  Created by IntelliJ IDEA.
  User: DEII
  Date: 12/10/2020
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Calculate</h1>
<form action="/calculate" method="post">
<input type="number" name="firstNumber">
<input type="number" name="secondNumber">
<br>
<br>

    <button type="submit" name="dau" value="1">cong</button>
    <button type="submit" name="dau" value="2">tru</button>
    <button type="submit" name="dau" value="3">nhan</button>
    <button type="submit" name="dau" value="4">chia</button>
</form>
<c:if test="${message!=null}">
    <h1>${message}</h1>
</c:if>

<c:if test="${result!=null}">
    <h1>result: ${result}</h1>
</c:if>
</body>
</html>
