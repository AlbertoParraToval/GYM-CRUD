<%-- 
    Document   : listadoSocio
    Created on : 21 feb 2022, 8:50:23
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

    <!-- Inicio de mi body -->
    <body class="fondo text-dark">
        <!-- Inicio de mi div container -->

        <div id="wrapper" class="container ">
            <!-- Comienzo de la barra de navegacion  -->

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

            <!-- Inicio Codigo Java-->  
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
                Statement s = conexion.createStatement();

                ResultSet listadoCliente = s.executeQuery("SELECT c.CodCli, c.NomCli, c.ApeCli, c.FechNac, a.CodAct FROM cliente c, apuntado a WHERE c.CodCli = a.CodCli");


            %>
            <br>
            <h2 class="text-center bg-light text-dark p-4 fst-italic">Tabla de los Socios</h2>
            <div  style="overflow-x:auto;">
                <!-- Comienzo de mi tabla -->
                <table class="table table-hover table-dark table-bordered p-2 text-light text-center">
                    <tr>
                        <th>Cod.Cliente</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Fech.Na</th>
                        <th>CodAct</th>
                        <th>Modificar</th>
                        <th>Borrar</th>
                    </tr>
                    <!-- Inicio Codigo Java-->  
                    <%          while (listadoCliente.next()) {
                            out.println("<tr><td>");
                            out.println(listadoCliente.getString("CodCli") + "</td>");
                            out.println("<td>" + listadoCliente.getString("NomCli") + "</td>");
                            out.println("<td>" + listadoCliente.getString("ApeCli") + "</td>");
                            out.println("<td>" + listadoCliente.getString("FechNac") + "</td>");
                            out.println("<td>" + listadoCliente.getString("CodAct") + "</td>");

                    %>
                    <td>
                        <form id="modificar" name="modificar" method="get" action="cambiaSocio.jsp">
                            <input type="hidden" name="codigoCli" value="<%=listadoCliente.getString("CodCli")%>" >
                            <input type="hidden" name="nombre" value="<%=listadoCliente.getString("NomCli")%>" >
                            <input type="hidden" name="apellido" value="<%=listadoCliente.getString("ApeCli")%>" >
                            <input type="hidden" name="fechnac" value="<%=listadoCliente.getString("FechNac")%>" >
                            <input type="hidden" name="codigoAct" value="<%=listadoCliente.getString("CodAct")%>" >
                            <input class="botomModificar" type="submit"  id="modificarBoton" value="Modificar">
                        </form>
                    </td>
                    <td>
                        <form method="get"  action="borraSocio.jsp">
                            <input  class="botomBorrado" type="hidden" name="codigoCli" value="<%=listadoCliente.getString("CodCli")%>"/>
                            <button type="submit" class="botomBorrado">Borrar</button>
                        </form>
                    </td>

                    <!-- Inicio Codigo Java-->  
                    <%
                        }
                    %>
                </table>


                <a class="text-decoration-none bg-ligh text-light" href="index.jsp"><p class="p-4 text-decoration-none text-light  text-uppercase">Volver a la Página Principal</p></a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
