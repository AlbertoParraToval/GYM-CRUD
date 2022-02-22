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
        <link id="logo" rel="shortcut icon" type="image/x-icon" href="./images/iconoCRUD.ico">       
        <link rel="stylesheet" href="style/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body class="fondo text-light">
        <% request.setCharacterEncoding("UTF-8");%>
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

            <h1>Modificación de Socio</h1>
            <div class="p-4 ">
                <form method="get" action="guardarsociomodificado.jsp">
                    <p class="">Codigo Cliente:</p>
                    <input type="text" name="codigo" size="10" value="<%= request.getParameter("codigoCli")%>" readonly>
                    <p>Nombre:</p>
                    <input type="text" name="nombre" size="30" value="<%= request.getParameter("nombre")%>">
                    <p>Apellidos:</p>
                    <input type="text" name="apellidos" size="50" value="<%= request.getParameter("apellido")%>">
                    <p>Fecha de Nacimiento:</p>
                    <input type="text" name="fechNac" size="5" value="<%= request.getParameter("fechnac")%>">
                    <p>Cod.Actividad a la que quiere apuntarse:</p>
                    <input type="text" name="codiAct" size="20" value="<%= request.getParameter("codigoAct")%>">
                    <button type="submit" value="Enviar">Enviar</button>          
                </form>
            </div>
            <a class="text-decoration-none bg-ligh text-light" href="index.jsp"><p class="p-4 text-decoration-none text-light bg-ligh text-uppercase">Volver a la Página Principal</a></p>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
