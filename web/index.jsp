<%-- 
    Document   : index
    Created on : 3 feb 2022, 13:27:43
    Author     : alber
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liga Santader 2021/22</title>
        <link rel="shortcut icon" href="./images/laliga-santander-v-negativo-600x600.jpg" type="x-icon"/>
        <link rel="stylesheet" href="./style/Style.css"/>
    </head>
    <body class="bg-dark">
        <div id="wrapper" class="container"> 
            <h1 class="text-center text-light fs-2">Equipos de La liga Santader</h1>
            <form action="index.html">
                <button type="submit" class="btn btn-secondary">Go back</button>
            </form>
       

            </div>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?useSSL=false&allowPublicKeyRetrieval=true", "root", "");
                Statement s = conexion.createStatement();
                
                
            %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        </div>
    </body>
</html>