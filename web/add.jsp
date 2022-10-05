<%-- 
    Document   : add
    Created on : Apr 9, 2021, 10:38:21 PM
    Author     : persomal computer
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
Please Login Here <a href='pay.jsp'>goto log to payment</a>
      <%
      
    } else {
        out.print("failed");
    }
    }
    catch(Exception e){
           
       }
%>
     
    </body>
</html>
