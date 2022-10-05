<%-- 
    Document   : other
    Created on : Mar 17, 2022, 9:03:30 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Other</title>
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
        <%@include file="usernavbar.jsp" %>
        <div class="back-img">
        <div class="contents">
            <h1 style="color:#4CAF50; padding-top: 50px;"><b><u><i>WELLCOME  OUR FOOD ORDERING WEBSITE</i></u></b></h1>
        </div>    
        <div ><h2 style="text-align:center; color:#8e24aa;"> dallay  food delivery sumple</h2></div>
        <div>
            <table  style="background-color: lightcyan">
                <tr>
                    <td><img src="img/aa.jpg" class="img-responsive" height=100 width=100 alt="Image"></td>
                    <td><h3>shafe logaw <br>
                            the ferst  best shafe  for our resturant
                        </h3></td>
                            
                    </tr>
             <tr>
                    <td><img src="img/ddd.jpg"  height=100 width=100 alt="Image"></td>
                       
                    <td><h3> shafe desalegn <br>
                        </h3>
                        
                        the second best shaff from my resturant
                    </td>
                    </tr>
            
            </table>
                    </div>
        </div>
                     <%@include file="footer.jsp" %> 
    </body>
</html>
