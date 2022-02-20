<%-- 
    Document   : index
    Created on : 20 feb 2022, 11:01:02
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
        <title>Parrinson GYM</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagenes/2115mancuerna.ico">
        <link rel="stylesheet" type="text/css" href="./images/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="bg-dark text-light border">
        <div id="wrapper" class="container">
            <h1 class="fs-1 text-center p-2 fst-italic">TovalGym</h1>


            <!-- MI HERO SECTION -->
            <section id="hero_section">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <!-- Los botones -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <!-- Se muestran las diapositivas -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./images/fondo2.jpg" class="d-block w-100" alt="alpine">
                        </div>
                        <div class="carousel-item">
                            <img src="./images/boutique2-1024x768.jpg" class="d-block w-100" alt="ferrari">
                        </div>
                        <div class="carousel-item">
                            <img src="./images/fondo3.jpg" class="d-block w-100" alt="mclaren">
                        </div>
                    </div>
                    <!-- Los botones de next y de previous -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previo</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                </div>
            </section>

            <h3 class="bg-grey"><a class="text-decoration-none text-light fst-italic" href="infoActividades.jsp">Información de las actividades que tenemos a tu disposición</a></h3>

            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
                Statement s = conexion.createStatement();

                ResultSet listadoCliente = s.executeQuery("SELECT c.CodCli, c.NomCli, c.ApeCli, c.FechNac, a.CodAct FROM cliente c, apuntado a WHERE c.CodCli = a.CodCli");


            %>
            <br>
            <h2 class="text-center bg-light text-dark p-4 fst-italic">Tabla de los Clientes</h2>
            <table class="table text-center text-light p-2">
                <tr>
                    <th>Código Cliente</th>
                    <th>Nombre</th><th>Apellidos</th>
                    <th>Fech Na</th>
                    <th>CodAct</th>
                </tr>

                <%          while (listadoCliente.next()) {
                        out.println("<tr><td>");
                        out.println(listadoCliente.getString("CodCli") + "</td>");
                        out.println("<td>" + listadoCliente.getString("NomCli") + "</td>");
                        out.println("<td>" + listadoCliente.getString("ApeCli") + "</td>");
                        out.println("<td>" + listadoCliente.getString("FechNac") + "</td>");
                        out.println("<td>" + listadoCliente.getString("CodAct") + "</td>");

                %>
                <td>
                    <form  name="modificar" method="get" action="cambiaSocio.jsp">
                        <input type="hidden" name="codigoCli" value="<%=listadoCliente.getString("CodCli")%>" >
                        <input type="hidden" name="nombre" value="<%=listadoCliente.getString("NomCli")%>" >
                        <input type="hidden" name="apellido" value="<%=listadoCliente.getString("ApeCli")%>" >
                        <input type="hidden" name="fechnac" value="<%=listadoCliente.getString("FechNac")%>" >
                        <input type="hidden" name="codigoAct" value="<%=listadoCliente.getString("CodAct")%>" >
                        <input type="submit"  class="bg-secondary" value="Modificar">
                    </form>
                </td>
                <td>
                    <form method="get" action="borraSocio.jsp">
                        <input type="hidden" name="codigoCli" value="<%=listadoCliente.getString("CodCli")%>"/>
                        <button type="submit" id="eliminarBoton">Eliminar</button>
                    </form>
                </td>
                </tr>
                <%
                    }
                %>
            </table>
            <br>

            <h2 class="text-center bg-light text-dark p-4 fst-italic">¿Quieres apuntarte?</h2>
            <form class="p-2" method="get" action="nuevoSocio.jsp">
                <div >Introduce tu código de identificación deseado
                    <input type="number" name="codigo" size="10" required><br></div>
                <div >Introduce tu nombre:
                    <input type="text" name="nombre" size="30" required><br></div>
                <div >Introduce tus apellidos
                    <input type="text" name="apellidos" size="50" required><br></div>
                <div>Introduce tu fecha de nacimiento
                    <input type="date" name="fechNac" size="5" required><br></div>
                <div>Introduce el código de la actividad a la que quieres apuntarte
                    <input type="number" name="codAct" min="1" max="5" required><br></div>
                <button type="submit" value="Enviar" id="nuevoCliente">Enviar</button>          
            </form>

            <footer id="footer"
                    class="text-center text-lg-start text-white"
                    >
                <!-- Grid container -->
                <div class="container p-4 pb-0">
                    <!-- Section: Links -->
                    <section class="">
                        <!--Grid row-->
                        <div class="row">
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 text-center text-dark font-weight-bold bg-white p-2" style="--bs-bg-opacity: .5;">
                                    IES CAMPANILLAS
                                </h6>
                                <iframe id="maps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d12787.601937156229!2d-4.5521375!3d36.74895969999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1643802169282!5m2!1ses!2ses" width="300" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                            <!-- Grid column -->

                            <hr class="w-100 clearfix d-md-none" />

                            <!-- Grid column -->

                            <hr class="w-100 clearfix d-md-none" />

                            <!-- Grid column -->
                            <hr class="w-100 clearfix d-md-none" />

                            <!-- Grid column -->
                            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                                <h6 class="text-uppercase mb-4 text-center font-weight-bold bg-white p-2 text-dark " style="--bs-bg-opacity: .5;" >¿Donde estamos?</h6>
                                <p><i class="fas fa-home mr-3"></i> Málaga, España</p>
                                <p><i class="fas fa-home mr-3"></i> +34 829 74 29 24</p>
                                <p><i class="fas fa-envelope mr-3"></i>tovalgym@gmail.com</p>

                                <a class="btn tauri text-center text-dark bg-light" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                                    Sobre Nosotros
                                </a>
                                <div class="offcanvas offcanvas-start bg-succes bg-dark" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                                    <div class="offcanvas-header back">
                                        <h5 class="offcanvas-title text-center text-light bg-dark" id="offcanvasExampleLabel">Sobre Mi</h5>
                                        <button type="button" class="btn-close text-reset " data-bs-dismiss="offcanvas" aria-label="Close "></button>
                                    </div>
                                    <div class="offcanvas-body text-light bg-dark">
                                        <div>
                                            Somos una nueva marca en la enorme industria del fitness, en este gimnasio te ofrecemos resultados, compañerismo
                                            ganas de aprender y de divertirse. Además contamos con los mejores entrenadores de Málaga, pudiendo recurrir a ellos
                                            si tienes alguna duda a la hora de realizar cualquier actividad.

                                            Un abrazo, os esperamos en TovalGym!

                                            Firmado, el jefe.
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class = "p-2"></div>

                        <!--Grid row-->
                    </section>
                    <!-- Section: Links -->
                </div>
                <!-- Grid container -->

                <div>

                </div>




                <!-- Copyright -->
                <div
                    class="text-center p-3"
                    style="background-color: rgba(0, 0, 0, 0.2)"
                    >
                    As 2022 Copyright:
                    <a class="text-white text-decoration-none" href="https://github.com/AlbertoParraToval"
                       >Alberto Parra Toval</a>
                </div>
                <!-- Copyright -->
            </footer>


        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
    <script type="text/javascript">

    </script>
</html>
