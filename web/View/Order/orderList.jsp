<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/5
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Orderlist</title>
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
        <th>OrderID</th>
        <th>Finished</th>
        <th>Date</th>
        <th colspan=1>Action</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${orders}" var="order">
        <tr>
          <td>${order.orderID}</td>
          <td>${order.finished}</td>
          <td><fmt:formatDate value="${orders.date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          <td><button type="button" class="btn btn-primary" onclick="window.location=''">ViewDetail</button></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>

<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>
