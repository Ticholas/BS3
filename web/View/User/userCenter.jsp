<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/5
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>User Center</title>
</head>

<body>
<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>

<div class="mywrapper form-group">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <div class="panel panel-success">
      <div class="panel-heading">
        ID:
      </div>
      <div class="panel-body">
        <% out.println(session.getAttribute("ID")); %>
      </div>
    </div>


    <div class="panel panel-success">
      <div class="panel-heading">
        Username:
      </div>
      <div class="panel-body">
        <% out.println(session.getAttribute("Username")); %>
      </div>
    </div>
    <button type="button" class="btn btn-primary" onclick="window.location='${pageContext.request.contextPath}/User/profile/edit/<% out.println(session.getAttribute("ID")); %>'">Edit</button>

  </div>
</div>
<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>
