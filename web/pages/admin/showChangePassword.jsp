

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/newBook.css">
        <title>JSP Page</title>
    </head>
    <body class="body"> <a href="welcome">Главная страница</a>
       
        <p>${info}</p>
        <form action="changePassword" method="POST"> <h1>Изменение пароля</h1>
            <select name="userId">
                <c:forEach var="user" items="${listUsers}">
                    <option value="${user.id}">${user.name} ${user.surname}. Логин ${user.login}</option>
                </c:forEach>
            </select>
            <input type="text" name="newpassword" value="">
            <input type="submit" value="Изменить">
        </form>
        
    </body>
</html>
