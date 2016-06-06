<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/6/6
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
</head>
<body>
<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>
<%
  if(session.getAttribute("ID") != null)
  {
    RequestDispatcher view= request.getRequestDispatcher("userCenter.jsp");
    view.forward(request,response);
  }
%>
<script>
  $(function(){
    $("#formLogin").validate({
      rules:{
        Username:{
          required:true,
          minlength:5,
          maxlength:32
        },
        Password:{
          required:true,
          maxlength:32
        }
      }
    });
  });
</script>

<form:form cssClass="mywrapper form-horizontal" id="formLogin" method="post" commandName="user" action="${pageContext.request.contextPath}/User/Login">
  <div class="form-group">
    <div class="col-sm-2"></div>
    <div class="col-sm-2">
      <h3>Login</h3>
      <br>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Username</label>
    <div class="col-sm-7">
      <form:input path="username" cssClass="form-control" id="Username"/>
      <br>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Password</label>
    <div class="col-sm-7">
      <form:password path="password" cssClass="form-control" id="Password"/>
      <br>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2"></div>
    <div class="col-sm-2">
      <button class="btn btn-primary" type="submit" value="Login">Login</button>
    </div>
  </div>
</form:form>
<jsp:include page="../../Site/footer.jsp"/>

</body>
</html>