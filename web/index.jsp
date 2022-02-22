<%-- 
    Document   : index
    Created on : 12 feb 2022, 11:01:02
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    </head>
    <!-- Inicio de body -->
    <body class="fondo text-light">
        <!-- Inicio mi container -->
        <div id="wrapper" class="container">
            <!-- Inicio mi barra de navegacion  -->
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

            <!-- Mi hero section -->
            <section id="hero_section">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <!-- Los botones -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    </div>
                    <!-- Se muestran las diapositivas -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./images/hero_section_1.jpg" class="d-block w-100" alt="foto gimansio">
                        </div>
                    </div>
                </div>
            </section>


            <h1 class="text-center  text-light p-4 fst-italic">Bienvenidos a TovalGym!</h1>
            <div class="container-fluid text-light border-bottom">
                <div class="clearfix">


                    <!-- Formulario de insertar clientes -->
                    <h3 class="text-light py-3 fst-italic">Unete a esta gran familia fitness, con solo introducir tus datos en el siguiente formulario</h3>

                    <form class="p-1 fs-6" method="get" action="nuevoSocio.jsp">
                        <div class="p-2">
                            <p >Introduce tu código de identificación deseado:</p>
                            <input type="number" name="codigo" size="10" required>
                        </div>  
                        <div class="p-2">
                            <p>Introduce tu nombre:</p>
                            <input type="text" name="nombre" size="30" required>
                        </div>

                        <div class="p-2">
                            <p>Introduce tus apellidos:</p>
                            <input type="text" name="apellidos" size="50" required>
                        </div>

                        <div class="p-2">
                            <p>Introduce tu fecha de nacimiento:</p>
                            <input type="date" name="fechNac" size="5" required>
                        </div>
                        <div class="p-2">
                            <p>Introduce el Código de la actividad que quieras apuntarte:</p>
                            <input type="number" name="codAct" min="1" max="7" required><br>
                        </div>

                        <div>
                            <button class="p-2 botomInsertar" type="submit" value="Enviar" >Introducir</button>          
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>

    <script type="text/javascript">

    </script>
</html>
