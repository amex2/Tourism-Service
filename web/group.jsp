<%-- 
    Document   : index
    Created on : Mar 17, 2022, 2:36:10 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="img/css.css"> 
        <%@include file="all.jsp"%>
        <style type="text/css">
.back-img{
background: url("img/R10.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size: cover;
}
</style>
    </head>
    <body>
       <%@include file="navbar.jsp" %>
<div class="back-img">
            <table style="padding: 20px;">
                <tr><th>No</th> <th>Full Name</th><th>Id</th><th>Photo</th></tr>
                <tr><td>1</td><td>Asresa moges</td><td>1095-11</td>><td>
                <tr><td>2</td><td>Desalegn Abuneh</td><td>1079-11</td>><td>
                <tr><td>3</td><td>Yitayh kindaw </td><td>1084-11</td>><td>
                <tr><td>4</td><td>Wondie Mengie </td><td>1083-11</td>><td>
                <tr><td>5</td><td>Kasswmar Tesfaw </td><td>1134-11</td>><td>
                
            </table>  
            
            
        </div>
<%@include file="footer.jsp" %> 
    </body>
</html>

 