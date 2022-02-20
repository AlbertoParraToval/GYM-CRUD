<%-- 
    Document   : cambiaSocio
    Created on : 20 feb 2022, 10:59:31
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TovalGym</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagenes/2115mancuerna.ico">
        <link rel="stylesheet" type="text/css" href="./images/style.css">
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
         <% request.setCharacterEncoding("UTF-8"); %>
    <div>
      <br><br>
        <div>ModificaciÃ³n de socio</div>
          <form method="get" action="guardarSocioModificado.jsp">
        <div id="texto">Codigo de cliente
            <input type="text" name="codigo" size="10" value="<%= request.getParameter("codigoCli") %>" readonly><br></div>
        <div id="texto">Nombre
            <input type="text" name="nombre" size="30" value="<%= request.getParameter("nombre") %>"><br></div>
        <div id="texto">Apellidos
            <input type="text" name="apellidos" size="50" value="<%= request.getParameter("apellido") %>"><br></div>
        <div id="texto">Fecha de nacimiento
            <input type="text" name="fechNac" size="5" value="<%= request.getParameter("fechnac") %>"><br></div>
        <div id="texto">Código de la actividad a la que quieres apuntarte
            <input type="text" name="codiAct" size="20" value="<%= request.getParameter("codigoAct") %>"><br></div>
            <a href="index.jsp"><div id="cancelar">Cancelar</div></a>
        <button type="submit" value="Enviar" id="nuevoCliente">Enviar</button>          
        </form>

      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
