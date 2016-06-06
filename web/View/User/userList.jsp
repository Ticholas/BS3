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
  <title>CustomerList</title>
</head>
<body>
<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>
<div class="mywrapper form-group">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <table class="table table-bordered table-responsive">
      <thead>
      <tr>
        <th>ID</th>
        <th>Username</th>
        <th colspan=2>Action</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${users}" var="user">
        <tr>
          <td>${user.userID}</td>
          <td>${user.username}</td>

          <td><button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/User/edit/${user.userID}'">Edit</button></td>
          <td><button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/User/delete/${user.userID}'">Delete</button></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>

  </div>
</div>
<jsp:include page="../../Site/footer.jsp"/>

</body>
</html>
