<%-- 
    Document   : nuevoSocio
    Created on : 20 feb 2022, 10:57:38
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
        <!-- Inicio de mi div container -->
        <div id="wrapper" class="container">
            <!-- Comienzo de la barra de navegacion  -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light " >
                <div class="container-fluid">
                    <a  class="navbar-brand" href="#">
                        <img  src="./images/iconoCRUD.ico" alt="Icono Gimnasio">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
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


            <h1 class="text-center text-dark bg-light p-4">Página de Registros</h1>

            <!-- Comienzo de java -->
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
                Statement s = conexion.createStatement();

                request.setCharacterEncoding("UTF-8");

                // Comprueba la existencia del nÃºmero de socio introducido
                String consultaNumSocio = "SELECT * FROM cliente WHERE CodCli="
                        + Integer.valueOf(request.getParameter("codigo"));

                ResultSet numeroDeSocios = s.executeQuery(consultaNumSocio);
                numeroDeSocios.last();

                if (numeroDeSocios.getRow() != 0) {
                    out.println("Lo siento, no se ha podido dar de alta, ya existe un cliente con el cÃ³digo "
                            + request.getParameter("socioID") + ".");
                } else {
                    String insercion = "INSERT INTO cliente VALUES (" + Integer.valueOf(request.getParameter("codigo"))
                            + ", '" + request.getParameter("nombre")
                            + "', '" + request.getParameter("apellidos")
                            + "', '" + request.getParameter("fechNac") + "')";
                    s.execute(insercion);
                    String insercion2 = "INSERT INTO apuntado VALUES (" + Integer.valueOf(request.getParameter("codigo"))
                            + ", " + Integer.valueOf(request.getParameter("codAct"))
                            + ", '" + "1900-01-01" + "')";
                    s.execute(insercion2);
                    out.println("Socio dado de alta correctamente.");
                }
                conexion.close();
            %>
            <!-- Final java -->

            <!-- Botones de volver e ir a ciertas páginas -->
            <div class="row text-center">
                <div class="col">
                    <a class="text-decoration-none bg-ligh " href="index.jsp"><p class=" text-light p-4 text-decoration-none text-light bg-ligh text-uppercase">Volver a la Página Principal</p></a>
                </div>

                <div class="col">
                    <a class="text-decoration-none bg-ligh" href="listadoSocio.jsp"><p class="text-light p-4 text-decoration-none text-light bg-ligh text-uppercase">Ir a Listado de Socios</p></a>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
