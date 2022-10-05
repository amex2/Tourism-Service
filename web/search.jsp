<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="css.css"> 
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
       
       <div style="padding: 5%"> 
        <table border="1">

      <%
          int x=0;
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
 String rid = request.getParameter("email");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from register where email='"+rid+"'");

while(rs.next()){
     x=1;
%>
<tr>
<th>Name</th>
<th>address</th>
<th>email</th>
<th>password</th>
<th>confirm password</th>
<th>action</th>
</tr>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("password")%></td>
<td><%=rs.getString("conpassword")%></td>
<td><a href="deleteoption.jsp?id=<%=rs.getString("email")%>"><button style="color: red;"type="button" class="delete" >Delete</button></a></td>
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