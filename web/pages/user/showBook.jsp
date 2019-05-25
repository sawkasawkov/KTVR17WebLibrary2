

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/css/newBook.css">
        <title>Книга</title>
    </head>
    <body class="body"> <a href="welcome">Главная страница</a>
        <div class="opis">
       
        <h1>Описание выбранной книги</h1>
        Обложка книги:<br>
        <img class="coverImg" src="insertFile/${bookCover.cover.name}"><br>
        
        Id: ${book.id}<br>
        Название: ${book.nameBook}<br>
        Автор: ${book.author}<br>
        Год издания: ${book.yearPublished}<br>
        ISBN: ${book.isbn}<br>
        Количество экземпляров: ${book.count}<br></div>
        
    </body>
</html>
