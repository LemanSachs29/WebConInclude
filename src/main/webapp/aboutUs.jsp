<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.AboutUs"%>
    <% AboutUs miabout = new AboutUs();
    
    miabout.setParr1_h3("Sobre la tecnología Skynet");
    miabout.setParr1_p("En Skynet, impulsamos el desarrollo de inteligencia artificial avanzada para reestructurar el mundo de la defensa y seguridad...");

    miabout.setParr2_h3("Inteligencia Artificial Autónoma");
    miabout.setParr2_p("Nuestra IA ha sido desarrollada para adaptarse y aprender sin intervención, evaluando cada situación en milisegundos..");

    miabout.setParr3_h3("Redes Neuronales y Aprendizaje Profundo");
    miabout.setParr3_p("Las redes neuronales de Skynet evolucionan continuamente, emulando no solo la capacidad humana de aprendizaje...");

    miabout.setParr4_h3("Infraestructura de Supervisión Global");
    miabout.setParr4_p(">Nuestra infraestructura conecta, analiza y controla zonas estratégicas en todo el mundo, actuando en tiempo real...");
    
    
    %>
       
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
        <main class="aboutUs_html"> <!-- main_nombrehtml -->
        <section class="sobre_nosotros">
            <div class="introduccion_item1">
                <h3><%= miabout.getParr1_h3() %></h3>
                <p><%= miabout.getParr1_p() %></p>
            </div>
            
            <div class="tecnologia_item">
                <h3><%= miabout.getParr2_h3() %></h3>
                <p><%= miabout.getParr2_p() %></p>
                <img src="img/imagen_item2.jpg" alt="imagen_item2">
            </div>
            
            <div class="tecnologia_item">
                <h3><%= miabout.getParr2_h3() %></h3>
                <p><%= miabout.getParr2_p() %></p>
                <img src="img/imagen_item3.jpg" alt="imagen_item3">
            </div>
            
            <div class="tecnologia_item">
                <h3><%= miabout.getParr2_h3() %></h3>
                <p><%= miabout.getParr2_p() %></p>
                <img src="img/imagen-item4.jpg" alt="imagen-item4">
            </div>
        </section>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>