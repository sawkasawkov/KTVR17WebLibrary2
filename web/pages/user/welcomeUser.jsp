<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css">
<div class="colorBack">
        <h1>Добро пожаловать в нашу библиотеку</h1>
        <p>${info}</p>
        <br>
        <a href="logout">Выйти из системы</a><br>
        <a href="showBooks">Список книг</a><br>
 </div>       
   
