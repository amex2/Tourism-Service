

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
background: url("img/R8.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size: cover;
}
</style>
    </head>
    <body>
       <%@include file="adminnavbar.jsp" %>

<div class="back-img" style="padding: 5%"> 
        
        
            <table border="1" class="table">
<tr>
                            <th>user_name</th>
                            <th>user_address</th>
                            <th>email</th>
                            <th>password</th>
                            <th>delete_user</th>

</tr>
<%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
  String Rid = request.getParameter("email");
  
  Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from register");

while(rs.next()){
    String rid = rs.getString("email");
%> 
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("password") %></td>
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


<%@include file="footer.jsp" %> 
    </body>
</html>