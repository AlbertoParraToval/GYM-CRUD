<%-- 
    Document   : infoActividades
    Created on : 20 feb 2022, 10:58:26
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
        <link rel="shortcut icon" type="image/x-icon" href="imagenes/2115mancuerna.ico">
        <link rel="stylesheet" href="./style/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <!-- Inicio de mi body -->
    <body class="fondo text-light">
        <!-- Inicio de mi container -->
        <div id="wrapper" class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light " >
                <div class="container-fluid">
                    <a  class="navbar-brand" href="#">
                        <img  src="./images/iconoCRUD.ico" alt="Icono Gimnasio">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!--Comienzo de lo que se va a ver en mi barra de navegacion-->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 p-2">
                            <form action="index.jsp">
                                <li class="nav-item">
                                    <a class="nav-link text-decoration-none" href="index.jsp" aria-current="page">Inicio</a>
                                </li>
                            </form>

                            <form action="infActividad.jsp"><li class="nav-item" >
                                    <a class="nav-link text-decoration-none"  href="infActividad.jsp">Info.Actividad</a>
                                </li>
                            </form>

                            <form action="listadoSocio.jsp">
                                <li class="nav-item">
                                    <a class="nav-link text-decoration-none"  href="listadoSocio.jsp">Listado de Clientes</a>
                                </li>
                            </form>

                            <form action="sobreNosotros.jsp">
                                <li class="nav-item">
                                    <a class="nav-link text-decoration-none"  href="sobreNosotros.jsp">Sobre Nosotros</a>
                                </li>
                            </form>
                        </ul>
                    </div>
                </div>
            </nav>
            <h1 class="text-light text-center">Actividades disponibles</h1>

            <!-- Codigo java -->
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
                Statement s = conexion.createStatement();

                ResultSet listadoActividad = s.executeQuery("SELECT * FROM actividad");


            %>

            <table class="table table-hover table-dark table-bordered p-2 text-light text-center">
                <tr>
                    <th>Cód.Actividad</th>
                    <th>Nom.Actividad</th>
                    <th>Descripción de actividad</th>
                </tr>
                <!-- Codigo java -->
                <%            while (listadoActividad.next()) {
                        out.println("<tr><td>");
                        out.println(listadoActividad.getString("CodAct") + "</td>");
                        out.println("<td>" + listadoActividad.getString("NomAct") + "</td>");
                        out.println("<td>" + listadoActividad.getString("DescAct") + "</td>");
                    }
                %>
                </tr>
            </table>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <a class="text-decoration-none bg-ligh text-light" href="index.jsp"><p class="p-4 text-decoration-none text-dark bg-ligh text-uppercase">Volver a la Página Principal</a></p>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
