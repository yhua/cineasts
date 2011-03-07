<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navigation">
    <c:choose>
        <c:when test="${empty user}">
            <a href="/auth/login">Login</a>
        </c:when>
        <c:otherwise>
            <a href="/user/${user.login}">${user.name}</a>
        </c:otherwise>
    </c:choose>
</div>