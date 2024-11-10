<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:ital,wght@0,100..800;1,100..800&display=swap"
        rel="stylesheet">
        

</head>

<body>
    <%@ include file="header.jsp" %>
    <main class="galeria_html"> <!-- main_nombrehtml-->
        <section class="galeria">
            <img src="img/poster1.jpg" alt="Poster de la película Terminator 1">
            <img src="img/poster2.jpg" alt="Poster de la película Terminator 2">
            <img src="img/poster3.jpg" alt="Poster de la película Terminator 3">
            <img src="img/poster4.jpg" alt="Poster de la película Terminator 4">
            <img src="img/poster5.jpg" alt="Poster de la película Terminator 5">
            <img src="img/poster6.jpg" alt="Poster de la película Temrinator 6">
        </section>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>