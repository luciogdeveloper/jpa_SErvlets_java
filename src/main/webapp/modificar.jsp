<%-- 
    Document   : modificar
    Created on : 27 ago. 2024, 14:20:39
    Author     : Alumno_invitado
--%>

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del Usuario para modificar</h1>
        <%
        Usuario usu =(Usuario) request.getSession().getAttribute("usurioAModificar");
        %>
        <form action="SvModificar" method="post">
            <p><label>ID</label><input value="<%=usu.getId()%>" type="text" name="id"></p>
            <p><label>DNI</label><input value="<%=usu.getDni()%>" type="text" name="dni"></p>
            <p><label>Nombre</label><input value="<%=usu.getNombre()%>" type="text" name="nombre"></p>
            <p><label>Apellido</label><input value="<%=usu.getApellido()%>" type="text" name="apellido"></p>
            <p><label>Telefono</label><input value="<%=usu.getTelefono()%>" type="text" name="telefono"></p>
            <input type="submit" value="Modificar" />
        </form>
    </body>
</html>
