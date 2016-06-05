<%--
  Created by IntelliJ IDEA.
  Model.User: HFQ
  Date: 2016/5/18
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
</head>
<body>
<h1>Home page</h1>
<p>
    ${message}<br/>
    <a href="${pageContext.request.contextPath}/Book/create">Add New Book</a><br/>
    <a href="${pageContext.request.contextPath}/Book/list">BookList</a><br/>
    <a href="${pageContext.request.contextPath}/User/create">Register</a>

</form>
</body>
</html>
