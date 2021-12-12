<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 11.12.2021
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ page import="java.util.*,com.example.tagdemo.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // just create some sample data ... normally provided by MVC
    List<Student> data = new ArrayList<>();

    data.add(new Student("John", "Doe", false));
    data.add(new Student("Max", "Born", true));
    data.add(new Student("Mariam", "Ibrio", false));
    data.add(new Student("Hohn", "Rong", false));

    pageContext.setAttribute("myStudents", data);
%>
<html>
<head>
    <title>Student Table</title>
</head>
<body>
<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer</th>
    </tr>

    <c:forEach var="tempStudent" items="${myStudents}">
        <!-- Setting up a table row -->
        <tr>
            <!-- Here you get the setters from the class Student && We set up table data (cell) for each row-->
            <td>${tempStudent.firstName}</td>
            <td>${tempStudent.lastName}</td>
            <td>
                <!-- Checking IF the student is a gold customer. IF yes then display special discount else display nothing-->
                    <c:if test="${tempStudent.goldCustomer}">
                        Special Discount
                    </c:if>

                <!-- There is no ELSE condition. To create an ELSE you need to inverse the statement by writing NOT-->
                    <c:if test="${not tempStudent.goldCustomer}">
                        No Discount
                    </c:if>

                <!-- you can also choose c:choose. This has WHEN and OTHERWISE, which is the same as IF and ELSE -->
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
