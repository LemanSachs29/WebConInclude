<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.Producto" %>

<%
    // Crear los objetos Producto
    Producto[] productos = new Producto[4];
    productos[0] = new Producto("Terminator Modelo Arnold", "Ayuda a ponerte fuerte en el gimnasio mientras cumples tu misión.", "Más Información");
    productos[1] = new Producto("Terminator de Vanguardia", "Potente, robusto y con capacidad para volar.", "Más Información");
    productos[2] = new Producto("Terminator Predator", "Agilidad, camuflaje y perfecto para misiones en la jungla.", "Más Información");
    productos[3] = new Producto("Terminator RoboCop", "Robocop creado por Skynet, la fuerza militar del futuro.", "Más Información");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:ital,wght@0,100..800;1,100..800&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@ include file="header.jsp" %>
    
    <section class="productos_html">

        <% 
            for (int i = 0; i < productos.length; i++) {
                Producto producto = productos[i];
        %>
            <div class="producto">
                <img src="img/producto<%= i+1 %>.jpg" alt="<%= producto.getNombre() %>">
                <div class="descripcion">
                    <h3><%= producto.getNombre() %></h3>
                    <p><%= producto.getDescripcion() %></p>
                    <button class="btn"><%= producto.getBoton() %></button>
                </div>
            </div>
        <% 
            }
        %>
    </section>

    <%@ include file="footer.jsp" %>
</body>

</html>
