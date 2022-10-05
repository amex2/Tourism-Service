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
       <%
   String id = request.getParameter("id");
   String name=request.getParameter("name");
String type=request.getParameter("type");
String price=request.getParameter("price");
if(id != null)
{
Connection conn = null;
PreparedStatement ps = null;
//int RID = Integer.parseInt(id);
try
{
        Class.forName("com.mysql.jdbc.Driver");
      Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","");
String update="Update additem set name=?,type=?,price=? where id='"+id+"'";
ps = com.prepareStatement(update);

ps.setString(1, name);
ps.setString(2, type);
ps.setString(3, price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<br><h1 style=color:red;padding-left:40px>Record Updated Successfully</h1>");
%>
<a href="cart.jsp "><p style=padding-left:50%><button type="button">View</button></p></a>
<%
}
else 
{
out.print("<br><h1 style=color:red;>There is a problem in updating Record.</h1>");
}
}
    
catch(Exception e)
{
}
}
%>
     <%
         
try{
    String Rid = request.getParameter("id");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","" );
Statement stmt=con.createStatement();
String sql ="select * from additem where id='"+Rid+"'";
ResultSet resultSet = stmt.executeQuery(sql);
while(resultSet.next()){
%>
    <form action="" method="post" >
         <h3> id</h3><input type="text" name="id" value="<%=resultSet.getString("id") %>"> <br>
         <h3> name</h3><input type="text" name="name" pattern="[A-Za-z]*" value="<%=resultSet.getString("name") %>"> <br>
         <h3> type</h3><input type="text" name="type"pattern="[A-Za-z]*" value="<%=resultSet.getString("type") %>"> <br>
            
                <h3>Price</h3><input type="text" name="price" pattern="[0-9]*"value="<%=resultSet.getString("price") %>"><br><br><br>
           <input type="submit" name="submit" value="Update">
            
     </form>
           <%
}
con .close();
} catch (Exception e) { 

}
%>
       </div>
        <%@include file="footer.jsp" %> 
    </body>
</html>