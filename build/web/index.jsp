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
background: url("img/R.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size: cover;
}
.text-black{
    padding-top: 10%;
    font-family: arial;
}
.button {
  background-color: black; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
}
</style>
    </head>
    <body>
       <%@include file="navbar.jsp" %>
<div class="container-fluid back-img">
<div class="text-center">
    <h1 class="text-black" ><b>Welcome To Tourism Service Website</b></h1>
    <button class="button">Click Here</button>
 
</div>

</div>
<%@include file="footer.jsp" %> 
    </body>
</html>
