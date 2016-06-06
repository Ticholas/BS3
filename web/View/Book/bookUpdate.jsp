<%--
  Created by IntelliJ IDEA.
  User: HFQ
  Date: 2016/5/28
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <title>CreateBook</title>
</head>
<body>

<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>

<script>
  $(function(){
    //$("#formAddBook").validate();
    $("#formUpdateBook").validate({
      rules:{
        ISBN:{
          required:true,
          digits:true,
          minlength:10,
          maxlength:13
        },
        Bookname:{
          required:true
        },
        Price:{
          required:true,
          number:true,
          min:0,
          max:100000000
        },
        Quantity:{
          required:true,
          digits:true,
          min:0,
          max:100000000
        }
      }
    });
  });
</script>
<form:form cssClass="mywrapper form-horizontal" id="formUpdateBook" method="post" commandName="book" action="${pageContext.request.contextPath}/Book/edit/${book.ISBN}">

  <div class="form-group">
    <label class="col-sm-2 control-label">ISBN :</label>
    <div class="col-sm-7">
      <form:input cssClass="form-control" id="ISBN" readonly="true" path="ISBN"/>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Bookname :</label>
    <div class="col-sm-7">
      <form:input cssClass="form-control" id="Bookname" readonly="true" path="bookName"/>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Price :</label>
    <div class="col-sm-7">
      <form:input cssClass="form-control" id="Price" path="price"/>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-2 control-label">Quantity :</label>
    <div class="col-sm-7">
      <form:input cssClass="form-control" id="Quantity" path="stockQuantity"/>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-2"></div>
    <div class="col-sm-2">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form:form>
</body>
</html>

<jsp:include page="../../Site/footer.jsp"/>


<!--
  <table>
    <tbody>
    <tr>
      <td>ISBN:</td>
    </tr>
    <tr>
      <td>BookName:</td>
    </tr>
    <tr>
      <td>Price:</td>
    </tr>
    <tr>
      <td>stockQuantity:</td>
    </tr>
    <tr>
      <td>
        <input type="submit" value="Edit">
      </td>
      <td></td>
    </tr>
    </tbody>
  </table>

</body>
</html>
!-->
