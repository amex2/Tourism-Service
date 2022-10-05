
<%@page import="java.sql.*"%>
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
</style>
    </head>
    <body>
       <%@include file="usernavbar.jsp" %>
       <div class="contents">
            <marquee><h1 style="color:#4CAF50; padding-top: 30px;"><b><u><i>WELLCOME  OUR FOOD ORDERING WEBSITE</i></u></b></h1></marquee></center>
        </div>    
        <div ><h2 style="text-align:center; color:#8e24aa;"> dallay  food delivery sumple<h2></div>
        <div>
            <table  style="background-color: lightcyan">
                <tr><td><img src="img/kitifoo.jpeg" class="img-responsive" style="height:250;width: 250; width:100%" alt="Image"></td>
                    <td><h3>Kitfo<br>
                            While injera is a daily experience for most Ethiopians,<br> kitfo is generally saved for a special occasion or served during national public holidays.<br> Kitfo is Ethiopian beef tartare made from top quality raw beef mixed hot chilli powder.<br> The lean meat is hand-chopped to give it a melt-in-your-mouth texture, <br>and the finished product is often eaten with kocho, <br>a chewy bread made from False Banana.
                        </h3></td>
                            
                    <tr/>
             <tr>
                    <td><img src="img/Dorrowet.jpg" class="img-responsive" style="height:250;width: 250; width:100%" alt="Image"></td>
                       
                    <td><h3> Injera is the base behind most Ethiopian meals.<br> Not only is Injera used to pick up your food, but it’s also used to accompany stews and other dishes.

                            M<br>uch like a sourdough flatbread, Injera is made with teff flour, <br>an Ethiopian grain, and is fermented for three days before being fried on a griddle.<br> Injera has a slightly tangy taste, with a texture much like a pancake.</h3></td>
                    <tr/>
            
             <tr>
                    <td><img src="img/katikala.jpeg" class="img-responsive" style="height:250;width: 250; width:100%" alt="Image"></td>
                       
                    <td><h3> mirt yehabesha metetoch nache<br>
                        tenikegna yehonu le  sewunet rasin zena madregiya</h3></td>
                    <tr/>
            <</table>
        </div>
       
        <%@include file="footer.jsp" %> 
    </body>
</html>