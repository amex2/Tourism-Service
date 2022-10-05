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
       <div style="padding: 5%;">
     <%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;

    Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","" );
stmt=con.createStatement();
String Rid=request.getParameter("id");
rs = stmt.executeQuery("select * from additem where id='"+Rid+"'");
    
while(rs.next()){
%>

<table border="1">
    <tr><td>the food id is</td><td>the food name is</td><td>the food type is</td><td>the food price</td></tr>
    <tr><td><%=rs.getString("id") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("type") %></td><td><%=rs.getString("price") %></td></tr>
    
</table>

     </div>
<%
}
con.close();//
}catch (Exception e) {
e.printStackTrace();
}%>

<div style="padding:5%;">
    <form action="" method="post">
        <table>
            <tr><td>food id</td><td><input type="text" name="id"  placeholder="eneter paymet id" required></td></tr>
       <tr><td> food_name</td><td><input  type="text" name="name" pattern="[A-Za-z]*" placeholder="eneter the food name" required></td></tr>
        <tr><td>phone_number</td><td><input type="text" name="phone"pattern="[0-9]*" placeholder="eneter your phione" required></td></tr>
       <tr><td> type</td><td><input type="text" name="type" pattern="[A-Za-z]*"palceholder="enter the food type" required></td></tr>
       <tr><td> price</td><td><input type="text" name="price"pattern="[0-9]*" placehoder="enter price"required></td></tr>
       <tr><td> seat_id</td><td><input type="text" name="seatid" pattern="[0-9]*"placeholder="enter seat number" required></td></tr>
       <tr><td> </td><td><input type="submit" name="submit" value="go"></td></tr>
        </table>
    </form>
                <%
    String id = request.getParameter("id"); 
    String name = request.getParameter("name");
        String phone = request.getParameter("phone");
    String type = request.getParameter("type");
    String price = request.getParameter("price");
        String seat = request.getParameter("seatid");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
   Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
   PreparedStatement pmt=com.prepareStatement("insert into payment values(?,?,?,?,?,?)");
   pmt.setString(1, id);
   pmt.setString(2, name);
      pmt.setString(3, phone);
   pmt.setString(4, type);
   pmt.setString(5, price);
      pmt.setString(6, seat);
  
 int i=pmt.executeUpdate();
    
    if (i==1) {
      
      %>
      Registration is Successful.
Please Login Here <a href='order.jsp'>goto log to payment</a>
      <%
      
    } else {
        out.print("failed");
    }
    }
    catch(Exception e){
           
       }
%>
</div>
       </div>
         <%@include file="footer.jsp" %> 
    </body>
</html>