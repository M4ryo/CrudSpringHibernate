<%-- 
    Document   : emisor
    Created on : Feb 6, 2019, 8:24:17 PM
    Author     : Desarrollo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Emisores List</h1>
        <a href="add.htm"  class="btn btn-primary">Agregar</a>

        <table class="table">
            <tr class="table-dark text-dark">
                <th>Id</th>
                <th>RFC</th>
                <th>Nombre</th>
                <th>Dirección</th>
                <th>Acción</th>
            </tr>
            <tbody>
                <c:forEach var="emisor" items="${emisores}">
                    <tr>
                        <td>
                            <c:out value="${emisor.getIdEmisor()}"></c:out>
                            </td>
                            <td>
                            <c:out value="${emisor.getRfc()}"></c:out>
                            </td>
                            <td>
                            <c:out value="${emisor.getNombre()}"></c:out>
                            </td>
                            <td>
                            <c:out value="${emisor.getDireccion()}"></c:out>
                            </td>
                            <td>
                                <a href="update.htm?idEmisor=${emisor.getIdEmisor()}">Modificar</a> |
                                <a href="delete.htm?idEmisor=${emisor.getIdEmisor()}">Borrar</a>
                            </td>

                        </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
