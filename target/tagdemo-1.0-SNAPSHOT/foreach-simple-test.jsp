<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    // Just to create some sample data. This is normally provided by MVC and not written as a scriplet
    String [] cities = {"Mumbai", "Singapore", "Philadelphia"};

    pageContext.setAttribute("myCities", cities);
%>

<html>
<body>
    <c:forEach var = "tempCity" items="${myCities}">
        ${tempCity}<br>
    </c:forEach>
</body>
</html>