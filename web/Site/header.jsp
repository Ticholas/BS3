<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/4/23
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <link href="../css/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="../css/menutopbar.css" rel="stylesheet">
  <link href="../css/index.css" media="all" rel="stylesheet">
  <link href="../css/layout.css" rel="stylesheet">
  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery-validation-1.15.0/dist/jquery.validate.min.js"></script>
</head>
<body>

<div class="navbar navbar-default navbar-fixed-top u-navbar" role="navigation">
  <div class="container">

    <!-- Collapsed navigation -->
    <div class="navbar-header">
      <!-- Expander button -->
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <!-- Main title -->
      <a class="navbar-brand brand-white scrolled" id="brand" href="../">

      </a>

    </div>

    <!-- Expanded navigation -->
    <div class="navbar-collapse collapse">
      <!-- Main navigation -->
      <ul class="nav navbar-nav">
        <li class=""><a href="../">Home</a></li>

        <li class=""><a href="${pageContext.request.contextPath}/Book/list">BookList</a></li>
        <li class=""><a href="../Order/Order?action=shoppingCart">ShoppingCart</a></li>

        <%
          if(session.getAttribute("ID") != null){
        %>

        <li class=""><a href="${pageContext.request.contextPath}/User/list">CustomerList</a></li>
        <li><a data-no-turbolink="true" href="${pageContext.request.contextPath}/Order/list/<%out.print(session.getAttribute("ID"));%>">OrderList</a></li>
        <li><a data-no-turbolink="true" href="../Statistic/Statistic.jsp">SalesStatistic</a></li>

        <%
          }
        %>

      </ul>

      <form class="navbar-form navbar-right">
        <%
          if(session.getAttribute("ID") == null){
        %>
        <a class="btn btn-primary u-2 login" href="../Logon/login.jsp">Log In</a>
        <a class="btn btn-primary u-1 signup" href="../Logon/register.jsp">Sign Up</a>
        <%
        }
        else {
        %>
        <a class="btn btn-primary u-2 login" href="../Logon/Logout">Log Out</a>
        <a class="text-white" href="../Logon/userCenter.jsp"><%out.print(session.getAttribute("Username"));%></a>
        <%

          }
        %>

      </form>

    </div>
  </div>
  <span class="spinner sk-rotating-plane u-loading"></span>
</div>




<!--
<nav class="navbar navbar-default">
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <button type="button" class="btn btn-primary navbar-btn" onclick="window.location='/Book?action=listBook'">BookList</button>
      <button type="button" class="btn btn-primary navbar-btn" onclick="window.location='/Order?action=shoppingCart'">ShoppingCart</button>

      <%
        //if(session.getAttribute("ID") == null){
      %>
      <button type="button" class="btn btn-primary navbar-btn" onclick="window.location='/login.jsp'">LOG IN</button>
      <%
      //}
      //else {
      %>
      <button type="button" class="btn btn-primary navbar-btn" onclick="window.location='/Customer?action=listCustomer'">CustomerList</button>
      <button type="button" class="btn btn-primary navbar-btn" onclick="window.location='/Order?action=listOrder'">OrderList</button>
      <button type="button" class="btn btn-primary navbar-btn" onclick="window.location='/Logout'">LOG OUT</button>
      <%
        //}
      %>

    </ul>
  </div>
</nav>
-->


</body>
</html>
