<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<c:if test="${empty user}">
    <c:redirect url="login"/>
</c:if>

// CREARE AREA Area Personale