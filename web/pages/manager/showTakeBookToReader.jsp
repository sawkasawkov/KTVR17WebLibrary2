
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/showUploadFile.css">
        <title>Библиотека</title>
    </head>
    <body class="body">
          <a href="welcome">Главная страница</a>
       <h1>Библиотека. Выдать книгу из списка книг и читателей</h1><br><br>
        <form action="takeBookToReader" method="POST" name="form1">
            
            <h2>Список книг</h2><br>
            <select name="selectedBook"><br>
                <c:forEach var="book" items="${listBooks}">
                    <option value="${book.id}">${book.nameBook} ${book.author}</option>
                </c:forEach>
            </select>
            <br>
                <h2>Список читателей</h2><br>
            <select name="selectedUser"><br>
                <c:forEach var="user" items="${listUsers}">
                    <option value="${user.id}">${user.name} ${user.surname}</option>
                </c:forEach>
            </select><br><br>
                <button type="submit" name="takeBook">Выдать книгу</button>
        </form>
    </body>
</html>
