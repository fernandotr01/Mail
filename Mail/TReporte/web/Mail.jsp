<%-- 
    Document   : Mail
    Created on : 29 nov. 2023, 10:03:14
    Author     : alons
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enviar Correo</title>
</head>
<body>
    <h2>Formulario de Envío de Correo</h2>
    <form action="EnviarCorreo.jsp" method="post">
        Correo Electrónico: <input type="text" name="correo"><br>
        Asunto: <input type="text" name="asunto"><br>
        Mensaje: <textarea name="mensaje" rows="5" cols="40"></textarea><br>
        <input type="submit" value="Enviar Correo">
    </form>
</body>
</html>