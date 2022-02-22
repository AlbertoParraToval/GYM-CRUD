<%-- 
    Document   : guardarsociomodificado
    Created on : 18 feb 2022, 10:56:01
    Author     : alber
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TovalGym</title>
        <link id="logo" rel="shortcut icon" type="image/x-icon" href="./images/iconoCRUD.ico">
        <link rel="stylesheet" href="./style/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>

        <!-- Inicio de java -->
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
            Statement s = conexion.createStatement();
            request.setCharacterEncoding("UTF-8");

            String actualizacion = "UPDATE cliente SET "
                    + "NomCli='" + request.getParameter("nombre")
                    + "', ApeCli='" + request.getParameter("apellidos")
                    + "', FechNac='" + request.getParameter("fechNac")
                    + "' WHERE CodCli=" + Integer.valueOf(request.getParameter("codigo"));
            s.execute(actualizacion);
            String actualizacion2 = "UPDATE apuntado SET "
                    + "CodAct=" + Integer.valueOf(request.getParameter("codiAct"))
                    + " WHERE CodCli=" + Integer.valueOf(request.getParameter("codigo"));
            s.execute(actualizacion2);

            conexion.close();
        %>
        <!-- Final de mi codigo de java -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
    <script>
        document.location = "index.jsp";
        alert("Socio actualizado correctamente");
    </script>
</html>