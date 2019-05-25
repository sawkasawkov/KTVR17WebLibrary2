
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/showUploadFile.css">
        <title>Загрузка файла</title>
    </head>
    <body class="body">
       
        <form action="uploadFile" method="POST" enctype="multipart/form-data"><br><br><h2>Загрузка файла!</h2>
            <input type="text" name="description"><br><br>
            <input type="file" name="file"><br><br>
            <input type="submit" value="Загрузить">
        </form>
        
    </body>
</html>
