

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/newBook.css">
        <title>Статистика</title>
    </head>
    <body class="body">
        <a href="welcome">Главная страница</a>
        <form action="showStatistic" method="POST"><br> <h1>Книги читаемые</h1>
            Период от:<br>
            ${dateFrom}
            День:<br>
            <select name="fromDay"><br>
                <c:forEach begin="1" end="31" var="i">
                    <option value="${i}" <c:if test="${i eq fromDay}">selected</c:if>>${i}</option>
                </c:forEach>
            </select><br>
            Месяц:<br>
            <select name="fromMonth"><br>
                <c:forEach begin="1" end="12" var="i">
                    <option value="${i}" <c:if test="${i eq fromMonth}">selected</c:if>>${i}</option>
                </c:forEach>
            </select><br>
            Год:<br>
            <select name="fromYear"><br>
                <c:forEach begin="2014" end="2019" var="i">
                    <option value="${i}" <c:if test="${i eq fromYear}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            <br> Период до:<br> ${dateTo}
            День:<br>
            <select name="toDay"><br>
                <c:forEach begin="1" end="31" var="i">
                    <option value="${i}" <c:if test="${i eq toDay}">selected</c:if>>${i}</option>
                </c:forEach>
            </select><br>
            Месяц:<br>
            <select name="toMonth"><br>
                <c:forEach begin="1" end="12" var="i">
                    <option value="${i}" <c:if test="${i eq toMonth}">selected</c:if>>${i}</option>
                </c:forEach>
            </select><br>
            Год:<br>
            <select name="toYear"><br>
                <c:forEach begin="2014" end="2019" var="i">
                    <option value="${i}" <c:if test="${i eq toYear}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            <br>
            <input type="submit" name="timeRange" value="Показать">
        
        <br>
        В период от ${fromDay}.${fromMonth}.${fromYear} до ${toDay}.${toMonth}.${toYear} были взяты следующие книги:<br>
        <c:forEach var="history" items="${listHistories}"><br>
            <p>"${history.book.author}. ${history.book.nameBook}" - книгу брал: ${history.user.name} ${history.user.surname}</p>
        </c:forEach><br>
            <h2>Книги по популярности</h2><br>
            <c:forEach var="entry" items="${sortedMapBooksRate}" varStatus="count">
            <p>${count.index+1}. "${entry.key.author}. ${entry.key.nameBook} | Рейтинг ${entry.value}</p>
        </c:forEach>  <br>
        <input type="submit" name="popBooks" value="Показать"> <br>   
       </form>    
            
    </body>
</html>
