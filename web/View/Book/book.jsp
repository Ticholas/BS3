<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/5/28
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
</head>
<body>
  <table>
    <thead>
    <tr>
      <th>ISBN</th>
      <th>Bookname</th>
      <th>Price</th>
      <th>Quantity</th
    </tr>
    </thead>
    <tbody>
      <s:iterator value="#request.list" id="books">
        <tr>
          <td><s:property value="#books.ISBN"/></td>
          <td><s:property value="#books.Bookname"/></td>
          <td><s:property value="#books.Price"/></td>
          <td><s:property value="#books.Stock"/></td>
        </tr>
      </s:iterator>
    </tbody>
  </table>
</body>
</html>
