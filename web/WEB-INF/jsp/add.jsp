<%-- 
    Document   : add
    Created on : Feb 9, 2019, 6:26:32 PM
    Author     : Desarrollo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <title>Agregar</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <f:form action="add.htm" method="POST" modelAttribute="emisor">
            <input type="hidden" name="idEmisor" id="idEmisor" value="0"/>
            <div class="container-fluid">
                <label for="rfc">RFC</label>
                <input class="form-control" name="rfc" id="rfc"/>
                <label for="rfc">Nombre</label>
                <input class="form-control" name="nombre" id="nombre"/>
                <label for="rfc">Dirección</label>
                <input class="form-control" name="direccion" id="direccion"/>
                <br>
                <input type="submit" class="btn btn-primary" value="Agregar" id="btnAgregar"/>
                <input type="button" class="btn btn-primary" value="Desde JQUERY" id="btnJquery"/>
            </div>
        </f:form>
        <div id="x"></div>
    </body>
    <script>
        $(document).ready(function () {
            $("#btnJquery").click(function () {
                $("#x").html("");
                $.ajax({
                    url: "all.htm",
                    cache: false,
                    dataType: "html",
                    success: function (data) {                      
                        $("#x").html(data);
                    }
                });
            });
        });
    </script>
</html>
