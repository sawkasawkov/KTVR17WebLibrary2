<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css">
<div class="colorBack">
        <a href=""><img src="./images/kniga.jpg" alt="Библиотека"></a>
     <a href="welcome">Главная страница</a>
        <h1>Добро пожаловать в нашу библиотеку</h1>
        <p>${info}</p>
        <br>
        <a href="logout"><h1>Выйти из системы</h1></a><br>
      
        <a href="newBook"><h1>Добавить книгу</h1></a><br>
        <a href="showBooks"><h1>Список книг</h1></a><br>
        
        <a href="newUser"><h1>Добавить читателя</h1></a><br>
        <a href="showUsers"><h1>Список читателей</h1></a><br>
        
         <a href="showTakeBookToReader"><h1>Выдать книгу</h1></a><br>
        <a href="showTakeBooks"><h1>Список выданных книг</a><br>
        
        <a href="showUserRoles"><h1>Назначить роль пользователю</h1></a><br>
        <a href="showChangePassword"><h1>Изменить пароль пользователю</a><br>
        
        <a href="showStatistic"><h1>Статистика</h1></a><br>
 </div>  

