<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/5/28
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <title>CreateBook</title>
</head>
<body>
<form:form method="post" commandName="book" action="${pageContext.request.contextPath}/Book/edit/${book.ISBN}">
  <table>
    <tbody>
    <tr>
      <td>ISBN:</td>
      <td><form:input path="ISBN"/></td>
    </tr>
    <tr>
      <td>BookName:</td>
      <td><form:input path="bookName"/></td>
    </tr>
    <tr>
      <td>Price:</td>
      <td><form:input path="price"/></td>
    </tr>
    <tr>
      <td>stockQuantity:</td>
      <td><form:input path="stockQuantity"/></td>
    </tr>
    <tr>
      <td>
        <input type="submit" value="Edit">
      </td>
      <td></td>
    </tr>
    </tbody>
  </table>
</form:form>
</body>
</html>
