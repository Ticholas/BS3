<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/5
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
  <title>OrderItemlist</title>
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
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${orderItems}" var="orderitem">
        <tr>
          <td>${orderitem.bookname}</td>
          <td>${orderitem.orderItemID.ISBN}</td>
          <td>${orderitem.quantity}</td>
          <td>${orderitem.totalPrice}"/></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>