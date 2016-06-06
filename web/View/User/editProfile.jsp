<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/5
  Time: 13:10
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

<form:form cssClass="mywrapper form-horizontal" method="post" commandName="profile" action="${pageContext.request.contextPath}/User/edit/${profile.userID}">

  <label>
    <input type="hidden" name="action" value="edit">
  </label>

  <div class="form-group">
    <label class="col-sm-2 control-label">ID:</label>
    <label class="control-label">${profile.userID}</label>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Username:</label>
    <div class="col-sm-7">
      <input class="form-control" id="Username"
             type="text" readonly="readonly" name="Username"
             value=${profile.username}} />
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Gender:</label>
    <div class="col-sm-7">
      <select class="form-control" id="Gender" name="Gender">
        <option value="M">Male</option>
        <option value="F">Female</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2"></div>
    <div class="col-sm-2">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form:form>
<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>
