<%-- 
    Document   : mostrarUsuario
    Created on : 24 ago. 2024, 19:04:09
    Author     : Alumno_invitado
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuario Registrados</h1>
        <%
        List<Usuario> listaUsuario =(List) request.getSession().getAttribute("listaUsuarios");
        int cont = 1;
        for (Usuario usu : listaUsuario) {
        %>
        <p>Usuario N°: <%=cont%></p>
        <p>ID : <%=usu.getId()%></p>
        <p>DNI : <%=usu.getDni()%></p>
        <p>Nombre : <%=usu.getNombre()%></p>
        <p>Apellido : <%=usu.getApellido()%></p>
        <p>Telefono : <%=usu.getTelefono()%></p>
        <p>--------------------</p>
        
        <%
            cont = cont + 1;
            }
        %>
    </body>
</html>
