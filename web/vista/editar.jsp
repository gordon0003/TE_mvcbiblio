<%@page import="com.emergentes.modelo.LibroDAO"%>
<%@page import="com.emergentes.modelo.Libro"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Libro item = (Libro) request.getAttribute("item");
        %>
    <hl>Editar libro</hl>
    <from action="Principal" method="post">
        Id: <input type="text" name="id" value="<%= item.getId() %>" size="2" pattern="[1-9]{1}[0-9]*"/> 
            <input type="hidden" name="tipo" value="<%= item.getId() %>" required/> 
        <br> 
        Titulo: <input type="text" name="titulo" value="<%= item.getTitulo()%>" required /> 
        <br> 
        Autor: <input type="text" name="autor" value="<%= item.getAutor() %>" /> 
        <br>
        Estado: <input type="radio" name="estado" value="l" <%= (item.getEstado() == 1) ? "checked" : ""%> required/> Disponible 
                <input type="radio" name="estado" value="2" <%= (item.getEstado() == 2) ? "checked" : ""%> required=""/> Prestado 
        <br> 
        <input type="submit" value="Enviar" /> 
    </from> 

</body>
</html>
