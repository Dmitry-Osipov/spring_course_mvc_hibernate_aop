<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: dimao
  Date: 19.03.2024
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Info</title>
</head>
<body>
    <h2>Employee Info</h2>
    <form:form action="saveEmployee" modelAttribute="employee">
        <p>Name <form:input path="name"/></p>
        <p>Surname <form:input path="surname"/></p>
        <p>Department <form:input path="department"/></p>
        <p>Salary <form:input path="salary"/></p>
        <input type="submit" value="OK">
    </form:form>
</body>
</html>
