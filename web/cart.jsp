<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 

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
       <%@include file="adminnavbar.jsp" %>
        <div style="padding: 5%;">
    <table border="1" class="table">
<tr>
                            <th class="header">order_id</th>
                            <th class="header">order_name</th>
                            <th class="header">type</th>
                            <th class="header">price</th>
                            <th class="header">delete</th>
                            <th class="header">update</th>

</tr>
<%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
  String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from additem");

while(rs.next()){
     String rid = rs.getString("id");
%>
<tr>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("type") %></td>
<td><%=rs.getString("price") %></td>
<td><a href="delete.jsp?id=<%=rs.getString("id") %>"><button style="color: red; font-size: 40px" type="button" class="delete" >Delete</button></a></td>
<td><a href="edit.jsp?id=<%=rs.getString("id")%>"><button type="button" class="update " style="color:green; font-size: 40px">Update</button></a></td>
</tr>
<%
}
con.close();//
}catch (Exception e) {
e.printStackTrace();
}%>
        </table>
        </div>
       <%@include file="footer.jsp" %> 
    </body>
</html>
