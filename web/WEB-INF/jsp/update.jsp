<%-- 
    Document   : update
    Created on : Feb 8, 2019, 11:19:46 PM
    Author     : Desarrollo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <title>Modificacion de emisor</title>
    </head>
    <body>
        <f:form action="update.htm" method="POST" modelAttribute="emisor">
            <input type="hidden" name="idEmisor" id="idEmisor" value="${emisor.getIdEmisor()}"/>
            <div class="container-fluid">
                <label for="rfc">RFC</label>
                <input class="form-control" name="rfc" id="rfc" value="${emisor.getRfc()}"/>
                <label for="rfc">Nombre</label>
                <input class="form-control" name="nombre" id="nombre" value="${emisor.getNombre()}"/>
                <label for="rfc">Dirección</label>
                <input class="form-control" name="direccion" id="direccion" value="${emisor.getDireccion()}"/>
                <br>
                <input type="submit" class="btn btn-primary" value="Modificar"/>
            </div>
        </f:form>
    </body>
</html>