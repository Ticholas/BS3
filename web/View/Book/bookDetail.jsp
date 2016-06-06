<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="Ticholas.Bean.BookInfo" %>
<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/5
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title></title>
</head>
<body>
<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>

<%
  BookInfo book = (BookInfo)(request.getAttribute("detail"));
  int quantity = book.getStockQuantity();
%>
<form:form cssClass="mywrapper form-horizontal" method="post" commandName="detail" action="${pageContext.request.contextPath}/Order/addToCart/${sessionScope.id}">
  <div class="form-group">
    <label class="col-sm-2 control-label">ISBN :</label>
    <div class="col-sm-7">
        <form:label cssClass="control-label" path="ISBN">${detail.ISBN}</form:label>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Bookname :</label>
    <div class="col-sm-7">
      <form:label cssClass="control-label" path="bookname">${detail.bookname}</form:label>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Price :</label>
    <div class="col-sm-7">
        <form:label cssClass="control-label" path="price">${detail.price}</form:label>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Stock :</label>
    <div class="col-sm-7">
        <form:label cssClass="control-label" path="stockQuantity">${detail.stockQuantity}</form:label>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Category :</label>
    <div class="col-sm-7">
      <form:label cssClass="control-label" path="category">${detail.category} </form:label>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Buy:</label>
    <div class="col-sm-3">
      <select class="form-control" name="Quantity">
        <%
          for(int i = 1;i <= quantity;i++){
        %>
        <option value="<% out.print(i);%>"><%out.print(i);%></option>
        <%}%>
      </select>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-2"></div>
    <div class="col-sm-7">
      <button type="submit" name="add to shopping cart" class="btn btn-primary">Add to Shopping Cart</button>
    </div>
  </div>
</form:form>

<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>