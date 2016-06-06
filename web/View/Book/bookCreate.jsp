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
        $("#formAddBook").validate({
            rules:{
                ISBN:{
                    required:true,
                    digits:true,
                    minlength:10,
                    maxlength:13
                },
                Bookname:{
                    required:true,
                    maxlength:128
                },
                Price:{
                    required:true,
                    number:true,
                    min:0,
                    max:10000000
                },
                Quantity:{
                    required:true,
                    digits:true,
                    min:0,
                    max:10000000
                },
                Category:{
                    required:true,
                    maxlength:20
                }
            }
        });
    });
</script>

<form:form cssClass="mywrapper form-horizontal" ID="formAddBook" method="post" commandName="book" action="${pageContext.request.contextPath}/Book/create">
    <label>
        <input type="hidden" name="action" value="create">
    </label>
    <div class="form-group">
        <label class="col-sm-2 control-label">ISBN:</label>
        <div class="col-sm-7">
            <form:input cssClass="form-control" ID="ISBN" path="ISBN"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Bookname :</label>
        <div class="col-sm-7">
            <form:input cssClass="form-control" ID="Bookname" path="bookName"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Price :</label>
        <div class="col-sm-7">
            <form:input cssClass="form-control" ID="Price" path="price"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Quantity :</label>
        <div class="col-sm-7">
            <form:input cssClass="form-control" ID="Quantity" path="stockQuantity"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Category :</label>
        <div class="col-sm-7">
            <input class="form-control" type="text" placeholder="Category"
                   id = "Category" name="Category" required="required"/>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-2"></div>
        <div class="col-sm-7">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form:form>>
<jsp:include page="../../Site/footer.jsp"/>
</body>
</html>

<!--
<body>
    <form:form method="post" commandName="book" action="${pageContext.request.contextPath}/Book/create">
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
                    <input type="submit" value="Create">
                </td>
                <td></td>
            </tr>
            </tbody>
        </table>
    </form:form>
</body>
</html>
-->
