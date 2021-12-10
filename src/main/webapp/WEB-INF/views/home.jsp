<%@ page import="com.dspringmvc.util.SecurityUtils" %><%--
  Created by IntelliJ IDEA.
  User: Shisui
  Date: 11/7/2021
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>Xin chao</h1>
<div>
<%--    <c:if test="${not empty USERMODEL}">--%>
<%--        <a href="<c:url value="/employee-home"/>">Employee Management</a>--%>
<%--        <a href="<c:url value="/car-park"/>">Carpark Management</a>--%>
<%--        <a href="<c:url value="/employee/home-page"/>">Employee Management</a>--%>
<%--        <a href="<c:url value="/car-park/home-page"/>">Carpark Management</a>--%>
<%--    </c:if>--%>
<%--    <c:if test="${empty USERMODEL}">--%>
<%--        <a href="<c:url value="/login?action=login"/>">Employee Management</a>--%>
<%--        <a href="<c:url value="/login?action=login"/>">Carpark Management</a>--%>
<%--    </c:if>--%>
    <security:authorize access = "isAnonymous()">
        <div>
            <a href="<c:url value="/login?action=login"/>">Employee Management</a>
            <a href="<c:url value="/login?action=login"/>">Carpark Management</a>
        </div>
        <li class="nav-item"><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
    </security:authorize>
    <security:authorize access = "isAuthenticated()">
        <div>
            <a href="<c:url value="/employee/home-page"/>">Employee Management</a>
            <a href="<c:url value="/car-park/home-page"/>">Carpark Management</a>
        </div>
        <li class="nav-item"><a class="nav-link" href="#">Wellcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>
    </security:authorize>
</div>
<%--<div>--%>
<%--    <a href="<c:url value="/login?action=login"/>">Dang nhap</a>--%>
<%--</div>--%>
</body>
</html>
