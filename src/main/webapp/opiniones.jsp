<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.Opiniones" %>

<%
    // Crear las valoraciones
    Opiniones[] valoraciones = new Opiniones[4];
    valoraciones[0] = new Opiniones("Juan Pérez", "9/10", "Terminator modelo Arnold", "¡El producto es increíble! El Terminator Arnold me ha ayudado a mejorar mi entrenamiento en el gimnasio. Su aspecto es impresionante y la calidad es de otro nivel. ¡Altamente recomendado!");
    valoraciones[1] = new Opiniones("Jose Martínez", "6/10", "Terminator RoboCop", "La idea del Terminator Robocop tiene potencial, pero me siento un poco decepcionado. Se nota que fue una colaboración con otra franquicia, y el resultado es que le han cortado un poco las alas a Skynet. El diseño del robot no está tan pulido como otros modelos de Terminator, y algunas funcionalidades parecen más limitadas. La fusión de los dos universos ha resultado en una versión un poco 'suavizada'. No es lo que esperaba de Skynet. El robot es eficaz, pero le falta esa agresividad que los modelos anteriores tenían. Creo que se podrían haber esmerado más en crear algo verdaderamente único, sin las restricciones de una colaboración.");
    valoraciones[2] = new Opiniones("Carlos Rodríguez", "9/10", "Terminator Predator", "Este Terminator Predator es una máquina impresionante. Desde su agilidad hasta sus capacidades de camuflaje, es perfecto para misiones en terrenos salvajes o junglas. La combinación de las mejores características de ambos mundos, el Predator y el Terminator, hace de este modelo uno de los más versátiles. Lo único que podría mejorar es su capacidad de respuesta en entornos urbanos; en la selva es increíble, pero en ciudades o entornos con mucha luz artificial pierde algo de su ventaja. A pesar de esto, es una pieza de tecnología de vanguardia que realmente impresiona. ¡Altamente recomendado para misiones de alto riesgo!");
    valoraciones[3] = new Opiniones("Ana Gómez", "8/10", "Terminator de vanguardia", "El Terminator de vanguardia es realmente robusto y potente. La capacidad de volar lo hace aún más impresionante. Estoy muy satisfecha con la compra, aunque me gustaría que tuviera más opciones de personalización.");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Opiniones</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:ital,wght@0,100..800;1,100..800&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@ include file="header.jsp" %>

    <section class="valoraciones">
        <div class="valoraciones_container">
            <%-- Recorrer el array de valoraciones usando un for en Java --%>
            <% 
                for (int i = 0; i < valoraciones.length; i++) {
                    Opiniones opinion = valoraciones[i];
            %>
                    <div class="valoracion">
                        <div class="perfil">
                            <span class="usuario"><%= opinion.getNusuario() %></span>
                            <img src="img/profilePhoto.jpg" alt="Foto de perfil de <%= opinion.getNusuario() %>" class="foto_perfil">
                        </div>
                        <div class="valoracion_info">
                            <div class="puntuacion">
                                <span>Puntuación:</span> <span class="puntos"><%= opinion.getPuntos() %></span>
                            </div>
                            <div class="producto_comprado">
                                <span>Producto Comprado:</span> <%= opinion.getNproducto() %>
                            </div>
                            <div class="opinion">
                                <p><%= opinion.getOpinion() %></p>
                            </div>
                        </div>
                    </div>
            <% 
                }
            %>
        </div>
    </section>

    <%@ include file="footer.jsp" %>
</body>
</html>
