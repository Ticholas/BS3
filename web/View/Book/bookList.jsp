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
  <title>Booklist</title>
</head>
<body>

<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>
<div class="mywrapper form-group">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <table class="table table-bordered table-responsive" border="2">
      <thead>
      <tr>
        <th>ISBN</th>
        <th>Bookname</th>
        <th>Price</th>
        <th>StockQuantity</th>
        <%
          if(session.getAttribute("ID") != null){
            out.print("<th colspan=3>Action</th>");
          }
          else{
            out.print("<th colspan=1>Action</th>");
          }
        %>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="book" items="${books}">
        <tr>
          <td>${book.ISBN}</td>
          <td>${book.bookName}</td>
          <td>${book.price}</td>
          <td>${book.stockQuantity}</td>
          <%
            if(session.getAttribute("ID") != null){
          %>
          <td><button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/Book/edit/${book.ISBN}'">Edit</button></td>
          <td><button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/Book/delete/${book.ISBN}'">Delete</button></td>
          <%
            }
          %>
          <td><button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/Book/detail/${book.ISBN}'">Detail</button></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <%
      if(session.getAttribute("ID") != null) {
    %>
    <button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/Book/create'">Add Book</button>
    <%}
    %>
  </div>
</div>

<jsp:include page="../../Site/footer.jsp"/>

<%--
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
 --%>
</body>
</html>
