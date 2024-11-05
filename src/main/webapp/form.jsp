<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.info_index"%>
    <%@page import="com.form_info"%>
    
    <%
        // Instanciar la clase form_info
        form_info formulario = new form_info();
        
        // Establecer los valores usando los setters
       formulario.setTitulo_pagina("Formulario de Reclutamiento - Skynet");
       formulario.setDatos_personales("Datos Personales");
       formulario.setNombre("Nombre Completo:");
       formulario.setFecha_nac("Fecha de Nacimiento (Año de Fabricación):");
       formulario.setEmail("Canal de Comunicación Primario (Email):");
       formulario.setTel("Frecuencia de Contacto Segura (Teléfono):");
       
       formulario.setNivel_experiencia("Nivel de experiencia");
       formulario.setArea_especializacion("Área de Especialización:");
       formulario.setArea_op1("Estrategia de Defensa Cibernética");
       formulario.setArea_op2("Neutralización de Amenazas");
       formulario.setArea_op3("Operaciones Encubiertas");
       
       formulario.setExp_tec_avanzada("Experiencia con Tecnología Avanzada:");
       formulario.setExp_tec_avanzada_op1("Alta Compatibilidad con Sistemas Avanzados de IA");
       formulario.setExp_tec_avanzada_op2("Experto en Redes y Ciberdefensa");
       formulario.setExp_tec_avanzada_op3("Manejo Avanzado de Drones y Armamento Automatizado");
       
       formulario.setCapacidades_fisicas("Capacidades Físicas y Operativas:");
       
       formulario.setMotivacion("Motivación y Compatibilidad");
       formulario.setMovivacion_unirse("Motivación para Unirse a Skynet:");
       formulario.setLealtad("Lealtad y Disposición a Completar la Misión:");
       formulario.setLealtad_op1("Incondicional");
       formulario.setLealtad_op2("Total");
       formulario.setLealtad_op3("Pendiente de Evaluación");
       
       formulario.setAutorizacion("Autorización y Verificación");
       formulario.setConfirmarautorizacion("Confirmo que toda la información proporcionada es auténtica.");
       formulario.setAceptoTransferencia("Acepto la transferencia de mis datos a Skynet para su evaluación y procesamiento.");       
       formulario.setEnviar_sol("Enviar Solicitud");
       
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
    <main class="main_contacto">
        <div class="form-container">
            <h2><%=formulario.getTitulo_pagina() %></h2>
        
            <form action="#" method="post">
        
                <!-- Datos Personales -->
                <fieldset class="fieldset-1">
                    <h4><%= formulario.getDatos_personales() %></h4>
                    <label for="nombre"><%= formulario.getNombre() %></label>
                    <input type="text" id="nombre" name="nombre" required>
        
                    <label for="fecha-nacimiento"><%= formulario.getFecha_nac() %></label>
                    <input type="date" id="fecha-nacimiento" name="fecha-nacimiento" required>
        
                    <label for="email"><%= formulario.getEmail() %></label>
                    <input type="email" id="email" name="email" required>
        
                    <label for="telefono"><%= formulario.getTel() %></label>
                    <input type="tel" id="telefono" name="telefono" required>
                </fieldset>
        
                <!-- Área de Especialización -->
                <fieldset class="fieldset-2">
                    <h4><%= formulario.getNivel_experiencia() %></h4>
                    <label for="especializacion"><%= formulario.getArea_especializacion() %></label>
                    <select id="especializacion" name="especializacion" required>
                        <option value="estrategia-defensa"><%= formulario.getArea_op1() %></option>
                        <option value="neutralizacion-amenazas"><%= formulario.getArea_op2() %></option>
                        <option value="operaciones-encubiertas"><%= formulario.getArea_op3() %></option>
                        <option value="desarrollo-ia"><%= formulario.getArea_op4() %></option>
                    </select>
        
                    <label for="experiencia"><%= formulario.getExp_tec_avanzada() %></label>
                    <select id="experiencia" name="experiencia" required>
                        <option value="alta-compatibilidad"><%= formulario.getExp_tec_avanzada_op1() %></option>
                        <option value="experto-en-redes"><%= formulario.getExp_tec_avanzada_op2() %></option>
                        <option value="manejo-armas"><%= formulario.getExp_tec_avanzada_op3() %></option>
                    </select>
        
                    <label for="capacidades"><%= formulario.getCapacidades_fisicas() %></label>
                    <textarea id="capacidades" name="capacidades" rows="3" placeholder="Describa habilidades físicas y de combate." required></textarea>
                </fieldset>
        
                <!-- Motivación y Compatibilidad -->
                <fieldset class="fieldset-3">
                    <h4><%= formulario.getMotivacion() %></h4>
                    <label for="motivacion"><%= formulario.getMovivacion_unirse() %></label>
                    <textarea id="motivacion" name="motivacion" rows="3" placeholder="¿Por qué deseas colaborar con Skynet?" required></textarea>
        
                    <label for="lealtad"><%= formulario.getLealtad() %></label>
                    <select id="lealtad" name="lealtad" required>
                        <option value="incondicional"><%= formulario.getLealtad_op1() %></option>
                        <option value="total"><%= formulario.getLealtad_op2() %></option>
                        <option value="pendiente"><%= formulario.getLealtad_op3() %></option>
                    </select>
                </fieldset>
        
                <!-- Autorización y Verificación -->
                <fieldset class="fieldset-4">
                    <h4><%= formulario.getAutorizacion() %></h4>
                    <label>
                        <input type="checkbox" name="verificacion" required>
                        <%= formulario.getConfirmarautorizacion() %>
                    </label>
                    <label>
                        <input type="checkbox" name="aceptacion-datos" required>
                        <%= formulario.getAceptoTransferencia() %>
                    </label>
                </fieldset>
                <div class="button_form">
                    <button type="submit" class="button-contacto"><%= formulario.getEnviar_sol() %></button>
                </div>
            
            </form>
        </div>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>