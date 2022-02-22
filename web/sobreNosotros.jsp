<%-- 
    Document   : sobreNosotros
    Created on : 21 feb 2022, 10:06:59
    Author     : alber
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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

            <!-- Final de la barra de navegacion  -->

            <!-- Inicio de la descripcion -->
            <h1 class="text-center fs-1 py-3 text-light text-uppercase">¿Qué es TovalGym?</h1>
            <p class="text-justify text-light">TovalGym es entre los gimnasios de España como el Barcelona de Guardiola, una marca referente en el mundo fitness, donde contamos con los
                mejores entrenadores y maquinas que se adecuaran a tus necesidades.
            </p>

            <p>Somos una nueva marca en la enorme industria del fitness, en este gimnasio te ofrecemos resultados, compañerismo ganas de aprender y de divertirse. Además contamos con los mejores entrenadores de Málaga, pudiendo recurrir a ellos si tienes alguna duda a la hora de realizar cualquier actividad. Un abrazo, os esperamos en TovalGym! Firmado, el jefe.</p>


            <!<!-- Inicio Novedades -->
            <h1 class="page-header p-4 text-center text-light text-uppercase">Novedades</h1>
            <div class="row row-cols-1 row-cols-md-3 g-4 py-3 px-4">
                <div class="col">
                    <!-- Primera Card-->
                    <div class="card h-100">
                        <img src="./images/yoga.jpg" class="card-img-top" alt="Fernando Alonso">
                        <div class="card-body text-dark">
                            <h5 class="card-title">Iniciación al Body Combat</h5>
                            <p class="card-text">El body combat es un programa de ejercicios cardiovasculares que se realiza en grupo y consiste en realizar movimientos de diferentes artes marciales...</p>
                        </div>
                        <div class="card-footer">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#card1" data-bs-toggle="tooltip" data-bs-placement="right" title="Leer mÃ¡s">
                                Leer más...
                            </button>
                            <div class="modal fade" id="card1" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header text-dark">
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body text-dark">
                                            <p>como el taekwondo, karate, capoeira, muay thay (boxeo tailandés), tai chi o boxeo, entre otros, a través de coreografías con música en la que se pueden ejercitar brazos, hombros, espalda, piernas y abdominales, permitiendo así mejorar la flexibilidad, la fuerza, la coordinación y la resistencia cardiovascular..</p> 

                                            <p>El body combat es una actividad que cualquier persona puede realizar, independientemente de su edad, ya que permite adaptar los ejercicios a todas las condiciones físicas.</p>
                                        </div>
                                        <div class="modal-footer text-dark">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Entendido</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Segunda Card-->
                <div class="col">
                    <div class="card h-100">
                        <img src="./images/body_combat.jpg" class="card-img-top" alt="yoga">
                        <div class="card-body text-dark">
                            <h5 class="card-title">Iniciación al Yoga</h5>
                            <p class="card-text">El yoga es una práctica que conecta el cuerpo, la respiración y la mente. Esta práctica utiliza posturas físicas, ejercicios de respiración y meditación para mejorar la salud general.</p>
                        </div>
                        <div class="card-footer text-dark">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#card2" data-bs-toggle="tooltip" data-bs-placement="right" title="Leer mÃ¡s">
                                Leer más...
                            </button>
                            <!-- Vertically centered modal -->
                            <div class="modal fade" id="card2" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header text-dark">
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body text-dark">
                                            <p>El yoga puede mejorar el nivel general de su estado físico y mejorar su postura y su flexibilidad. También puede:</p>
                                            <p> Reducir su presión arterial y su frecuencia cardíaca</p>
                                            <p> Ayudarle a relajarse</p>
                                            <p>   Mejorar su confianza en usted mismo</p>
                                            <p>    Reducir el estrés</p>
                                            <p>      Mejorar su coordinación</p>
                                            <p>        Mejorar su concentración</p>
                                            <p>         Ayudarle a dormir mejor</p>
                                            <p>           Ayudar a la digestión</p>

                                        </div>
                                        <div class="modal-footer text-dark">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Entendido</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Tercera Card -->
                <div class="col">
                    <div class="card h-100">
                        <img src="./images/spinning.jpeg" class="card-img-top" alt="Spinning">
                        <div class="card-body text-dark">
                            <h5 class="card-title">Iniciación a Spinning</h5>
                            <p class="card-text">
                                Es un ejercicio aeróbico y cardiovascular que se realiza sobre una bicicleta estática en el que se trabaja el tren inferior: las piernas y los glúteos. Su finalidad principal es perder peso y la tonificación de los músculos, además de mejorar la fuerza y la resistencia.
                            </p>
                        </div>
                        <div class="card-footer text-dark">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#card3" data-bs-toggle="tooltip" data-bs-placement="right" title="Leer mÃ¡s">
                                Leer más...
                            </button>
                            <!-- Vertically centered modal -->
                            <div class="modal fade" id="card3" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header text-dark">
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p>La sesión de spinning tiene una duración que oscila entre los 40 minutos y una hora, y está guiada por un entrenador especializado, que coordina a un grupo entero. Las clases comienzan con un calentamiento previo de unos 10 minutos y finalizan con una serie de estiramientos de 5 a 10 minutos, todo ello con el fin de mejorar el rendimiento físico y evitar lesiones.</p>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Entendido</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Final novedades-->

            <div class = "p-4"></div>

            <!-- Footer -->
            <footer id="footer"
                    class="text-center text-lg-start text-white">
                <h1 class="text-center fs-1 text-light text-uppercase">Conocenos!!</h1>
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
                                <div class="offcanvas offcanvas-start bg-succes bg-light" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                                    <div class="offcanvas-header back">
                                        <h5 class="offcanvas-title text-center text-dark bg-light" id="offcanvasExampleLabel">Sobre Mi</h5>
                                        <button type="button" class="btn-close text-reset " data-bs-dismiss="offcanvas" aria-label="Close "></button>
                                    </div>
                                    <div class="offcanvas-body text-light fondo">
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
            <!-- Final footer -->
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>
