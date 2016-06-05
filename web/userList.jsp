<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/4
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
  <table>
    <thead>

    </thead>
    <tbody>
    <c:forEach var="book" items="${books}">
      <tr>
        <td>${book.ISBN}</td>
        <td>${book.bookName}</td>
        <td>${book.price}</td>
        <td>${book.stockQuantity}</td>
        <td><a href="/Book/edit/${book.ISBN}">EDIT</a></td>
        <td><a href="/Book/delete/${book.ISBN}">DELETE</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</body>
</html>
