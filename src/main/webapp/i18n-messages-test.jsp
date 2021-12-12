<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session"/>

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="com.example.tagdemo.i18n.resources.mylabels"/>
<html>
<head>
    <title>i18n</title>
</head>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>

<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>

<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>

<!-- fmt means Format-->
<hr>
<br><br>
<fmt:message key="label.greeting"/> <br/><br/>

<fmt:message key="label.firstname"/> <i>John</i> <br/>

<fmt:message key="label.lastname"/> <i>Doug</i> <br/><br/>

<fmt:message key="label.welcome"/> <br/>

<hr>

Selected locale: ${theLocale}
</body>
</html>
