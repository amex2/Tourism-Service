<%-- 
    Document   : delete
    Created on : Mar 17, 2022, 7:30:32 AM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("id");
        Connection con=null;
        PreparedStatement ps;
        ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
      Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","");
      ps=com.prepareStatement("delete from additem where id=?");
      ps.setString(1, id);;
      ps.executeUpdate();
      response.sendRedirect("cart.jsp");
                %>
    </body>
</html>
