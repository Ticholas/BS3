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
    <title>Register</title>
</head>
<body>

<jsp:include page="../../Site/header.jsp"/>
<jsp:include page="../../Site/seperator.jsp"/>

<script>
    $(function(){
        $("#formAddCustomer").validate({
            rules:{
                Username:{
                    required:true,
                    minlength:5,
                    maxlength:16
                },
                Password:{
                    required:true,
                    maxlength:32
                },
                PasswordValidate:{
                    required:true,
                    maxlength:32,
                    equalTo:"#Password"
                }
            },
            messages:{
                Password:{
                    required:"Please enter password"
                },
                PasswordValidate:{
                    required:"Please enter password",
                    equalTo:"Two Passwords don't match"
                }
            }
        });
    });
</script>
<form:form cssClass="mywrapper form-horizontal" id="formAddCustomer" method="post" commandName="user" action="${pageContext.request.contextPath}/User/create">

    <div class="form-group">
        <label class="col-sm-2 control-label">Username :</label>
        <div class="col-sm-7">
            <form:input cssClass="form-control" ID="Username" path="Username"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Password :</label>
        <div class="col-sm-7">
            <form:password cssClass="form-control" ID="Password" path="Password"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Password Validated:</label>
        <div class="col-sm-7">
            <input class="form-control" type="password" id="PasswordValidate" name="PasswordValidate" required="required"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Gender</label>
        <div class="col-sm-7">
            <select class="form-control" name="Gender">
                <option value="M">Male</option>
                <option value="F">Female</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-2"></div>
        <div class="col-sm-7">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>
<jsp:include page="../../Site/footer.jsp"/>

<!--
        <table>
            <tbody>
            <tr>
                <td>Username:</td>
            </tr>
            <tr>
                <td>Password:</td>
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
    -->
</body>
</html>
