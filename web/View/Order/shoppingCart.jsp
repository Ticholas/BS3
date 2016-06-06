<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/5
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Shopping cart</title>
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
        <th>Bookname</th>
        <th>ISBN</th>
        <th>Quantity</th>
        <th>TotalPrice</th>
        <th colspan=2>Action</th>
      </tr>
      </thead>
      <tbody>
      <% int i = 0;%>
      <c:forEach items="${orderItems}" var="orderitem">
        <tr>
          <%i++;%>
          <td>${orderitem.bookname}</td>
          <td>${orderitem.orderItemID.ISBN}</td>
          <td>${orderitem.quantity}</td>
          <td>${orderitem.totalPrice}</td>
          <td><button type="button" class="btn btn-primary" onclick="window.location=''">Edit</button></td>
          <td><button type="button" class="btn btn-primary" onclick="window.location=''">Delete</button></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <%if(i == 0){%>
    <h3 class="">Shopping cart is empty!</h3>
    <button type="button" class="btn btn-primary" onclick="window.location=''">Get Some Books!</button>

    <%}else{%>
    <button type="button" class="btn btn-primary" onclick="window.location=''">Pay!</button>
    <%}%>
  </div>
  <div class="col-sm-2"></div>

</div>
<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>
