




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

<div class="back-img" style="padding: 5%"> 
        <table border="1"class="table">

      <%
          int x=0;
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
                    
 String rid = request.getParameter("name");
  Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from additem where name='"+rid+"'");
 //int x=0;
while(rs.next()){
    x=1; 
%>
<tr>
<th>order_id</th>
 <th>order_name</th>
 <th>type</th>
 <th>price</th>
</tr>
<tr>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("type") %></td>
<td><%=rs.getString("price") %></td>
</tr>
<%
}
   
  
con.close();
}catch (Exception e) {
e.printStackTrace();
}%>
        </table>

        </div>
        <%
    if(x==0){
        %>
        <h1 style="color: red;">the recored is not found</h1>  
    <%}%>


<%@include file="footer.jsp" %> 
    </body>
</html>