<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.info_index"%>
        <%
        
        info_index miIndex = new info_index();
		miIndex.setPersona1Nombre("Se busca: John Connor");
		miIndex.setPersona1terrorista("Terrorista de alto riesgo");
		miIndex.setPersona1Descripcion("Líder de la resistencia humana contra Skynet, responsable de múltiples ataques a nuestras instalaciones. Connor representa una amenaza significativa para la seguridad y el orden mundial. Se requiere acción inmediata para su captura y neutralización.");
		miIndex.setPersona2Nombre("Se Busca: Sarah Connor");
		miIndex.setPersona2terrorista("Terrorista y cómplice subversiva");
		miIndex.setPersona2Descripcion("Involucrada en actividades de sabotaje contra Skynet. Su capacidad para incitar a la insurrección la convierte en una amenaza clave. La captura de Sarah Connor es esencial para mantener la paz y la seguridad global.");
		miIndex.setEslogan("Un mundo sin humanos: La era de Skynet comienza ahora");
		miIndex.setSkynetDescripcion("A medida que el mundo se enfrenta a conflictos crecientes, Skynet se presenta como la solución militar que los gobiernos han estado buscando. Su capacidad para operar drones y tácticas automatizadas promete una nueva era de eficiencia en el combate, garantizando resultados rápidos y precisos en situaciones críticas. Con cada actualización, Skynet se vuelve más avanzada y eficaz, optimizando la defensa y minimizando los errores humanos. La implementación de esta inteligencia artificial marca un hito en la evolución de la estrategia militar, transformando la manera en que se llevan a cabo las operaciones y asegurando un futuro en el que el control y la seguridad están en manos de la tecnología más sofisticada.");
		
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
    <main class="main_index">
        <section>
            <div class="seBusca">
                <p><!-- persona1Nombre -->
                <%= miIndex.getPersona1Nombre() %>
                </p>
                <p><!-- persona1terrorista-->
                <%= miIndex.getPersona1terrorista() %>
                </p>
                <img src="img/JhonSeBuscaFiltro.jpg" alt="Imagen de John Connor">
                <p><!-- persona1descripcion-->
                    <%= miIndex.getPersona1Descripcion() %>
                </p>
            </div>
            <div class="seBusca">
                <p><%= miIndex.getPersona2Nombre() %></p>
                <p><%= miIndex.getPersona2terrorista() %></p>
                <img src="img/SarahSeBusca.jpg" alt="Imagen de Sarah Connor">
                <p>
                    <%= miIndex.getPersona2Descripcion() %>
                </p>
            </div>
        </section>
        <section>
            <div class="contenidoPrincipal">
                <h1><%= miIndex.getEslogan() %></h1>
            <img src="img/skynet800x450px.png" alt="Imagen corporativa Cyebrdybe Systems">
            <p>
                <%= miIndex.getSkynetDescripcion() %>
            </p>
            </div>
        </section>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>