
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Item</title>
        <link rel="stylesheet" href="img/css.css"> 
        <%@include file="all.jsp"%>
        <style type="text/css">
.back-img{
background: url("img/R7.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size: cover;
}
</style>
    </head>
    <body>
       <%@include file="adminnavbar.jsp" %>
       <div class="back-img">
<div class="contents" style="padding-top: 10%;padding-left: 20%;">
        
            <div class="login">

	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
             
	<form action="additem.jsp" method="post" class="form-container">
            <marquee>    <h1 class="header"> sending user select item </h1></marquee>
			<div class="form-group">
                            <label> order_id </label>
                            <input typee="text"  name="id" class="form-control" id="name" placeholder="insert id" required ><br>
                            <label> order_name</label>
                            <input type="text" name="name" pattern="[A-Za-z]*" class="form-control" id="address" placeholder="insert food type" required><br>
                            <label>type</label>
                            <input type="text" name="type"  pattern="[A-Za-z]*" class="form-control" id="InputEmail" placeholder="insert type" required><br>
                        <label >price</label>
                        <input type="text" name="price" pattern="[0-9]*" class="form-control" id="password" placeholder="insert price" required ><br>
                          
                            
                            <button type="submit" name="sub" value="register"> add item</button>
                       
                  
        <%
    String id = request.getParameter("id");    
    String name = request.getParameter("name");
    String type = request.getParameter("type");
    String price = request.getParameter("price");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
   Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","");
   PreparedStatement pmt=com.prepareStatement("insert into additem values(?,?,?,?)");
   pmt.setString(1, id);
   pmt.setString(2, name);
   pmt.setString(3, type);
   pmt.setString(4, price);
  
 int i=pmt.executeUpdate();
    
    if (i==1) {
      
      %>
      Registration is Successful.
Please Login Here <a href='cart.jsp'>Go to cart</a>
      <%
      
    } else {
        out.print("failed");
    }
    }
    catch(Exception e){
           
       }
%>
             </div>
	</form>
        </div>
              </div>
</div>
             <%@include file="footer.jsp" %> 
    </body>
</html>