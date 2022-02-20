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
        <link rel="stylesheet" type="text/css" href="./images/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body class="bg-dark text-light">
        <div id="wrapper" class="container">
            <h1 class="text-light text-center">Actividades disponibles</h1>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
                Statement s = conexion.createStatement();

                ResultSet listadoActividad = s.executeQuery("SELECT * FROM actividad");


            %>

            <table class="table p-2 text-light ">
                <tr>
                    <th>Cód.Actividad</th>
                    <th>Nom.Actividad</th>
                    <th>Descripción de actividad</th>
                </tr>
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
            <a class="text-decoration-none bg-light" href="index.jsp"> <p class="p-4 text-decoration-none text-light">Volver a la Página Principal</p></a>

            <br>
            <br>
            <br>


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


    </body>
</html>
