<%-- 
    Document   : EnviarCorreo
    Created on : 29 nov. 2023, 10:04:19
    Author     : alons
--%>


<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Recoge los parámetros del formulario
    String to = request.getParameter("correo");
    String subject = request.getParameter("asunto");
    String messageText = request.getParameter("mensaje");

    // Configura las propiedades para la conexión al servidor de correo saliente (SMTP)
    Properties props = new Properties();
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.ssl.trust", "smtp.gmail.com");   

    // Autenticación
    Authenticator authenticator = new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("proyectointegrador237@gmail.com", "kifv ucnm imuw hemx");
        }
    };

    // Configura la sesión
    Session miSession = Session.getDefaultInstance(props, authenticator);

    try {
        // Crea el mensaje
        Message message = new MimeMessage(miSession);
        message.setFrom(new InternetAddress("proyectointegrador237@gmail.com"));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        message.setSubject(subject);
        message.setText(messageText);

        // Envía el mensaje
        Transport.send(message);

        out.println("<h2>Correo enviado con éxito</h2>");
    } catch (MessagingException e) {
    out.println("<h2>Error al enviar el correo: " + e.getMessage() + "</h2>");
    e.printStackTrace(new java.io.PrintWriter(out));
}
%>
