<%-- 
    Document   : index
    Created on : 24 ago. 2024, 18:14:47
    Author     : Alumno_invitado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del Cliente</h1>
        <form action="SvUsurio" method="post">
            <p><label>DNI</label><input type="text" name="dni"></p>
            <p><label>Nombre</label><input type="text" name="nombre"></p>
            <p><label>Apellido</label><input type="text" name="apellido"></p>
            <p><label>Telefono</label><input type="text" name="telefono"></p>
            <input type="submit" value="Enviar" />
        </form>
        
        <h1>Traer datos desde el servidor</h1>
        <form action="SvUsurio" method="get">
            <input type="submit" value="Mostrar Usuarios" />
        </form>
        
        <h1>Eliminar Usuario</h1>
        <form action="SvEliminar" method="post">
            <p><label>ID: </label><input type="text" name="id_usuario"></p>
            <input type="submit" value="Eliminar Usuarios" />
        </form>
        
        <h1>Modificar Usuario</h1>
        <form action="SvModificar" method="get">
            <p><label>ID: </label><input type="text" name="id_usuario"></p>
            <input type="submit" value="Editar Usuarios" />
        </form>
    </body>
</html>
