
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
       
       <div class="contents"style="padding:4%;">
          
         <form action="search3.jsp"method="post">
            <input style="width:25%" size="30"type="text" name="name" placeholder="search here by name"><input  style=" background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;"type="submit"name="sub"value="search">
            
        </form>
            </div>
         <table  border="1" class="table">
<tr>
                            <th>order_id</th>
                            <th>order_name</th>
                            <th>type</th>
                            <th>price</th>
                         
                            <th> add item</th>

</tr>
<%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
  String Rid = request.getParameter("id");
  Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from additem");

while(rs.next()){
     String id = rs.getString("id");
%>
<tr>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("type") %></td>
<td><%=rs.getString("price") %></td>

<td><a href="pay.jsp?id=<%=rs.getString("id")%>"><button style="color:green;"type="button" class="delete" >order it</button></a></td>
</tr>
<%
}
con.close();
}catch (Exception e) {
e.printStackTrace();
}%>

        </table>  
</div>
       
       <%@include file="footer.jsp" %> 
    </body>
</html>