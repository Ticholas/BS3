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
    <form:form method="post" commandName="user" action="${pageContext.request.contextPath}/User/create">
        <table>
            <tbody>
            <tr>
                <td>Username:</td>
                <td><form:input path="Username"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:password path="Password"/></td>
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
