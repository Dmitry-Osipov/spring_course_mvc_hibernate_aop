<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dimao
  Date: 18.03.2024
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>All Employees</title>
</head>
<body>
    <h2>All Employees</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <c:url var="updateButton" value="/updateInfo">
                <!-- Это ссылка, которая нигде не отображается, но мы её будем использовать при обновлении данных
                сотрудника -->
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td><input type="button" value="Update" onclick="window.location.href = '${updateButton}'">&nbsp;
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"></td>
            </tr>
        </c:forEach>
    </table>
    <p><input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"></p>
</body>
</html>
