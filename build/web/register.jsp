<%-- 
    Document   : register
    Created on : Mar 17, 2022, 9:17:14 AM
    Author     : admin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
.container{
    padding: 10%;
}
</style>
    </head>
    
    <body  >
        <%@include file="navbar.jsp" %>
        <div class="back-img"> 
     <div class="container">
  <section id="content">
	<form action="register.jsp" method="post" id="login">
           
			<div class="form-group">
                            <table>
                                <tr><td> <label> Name</label></td><td>
                            <input type="text"  name="name" id="username"  placeholder="enter name" required ></td></tr>
                            <tr><td><label> Address</label></td><td>
                                    <input type="text" name="address"   placeholder="address" required></td></tr>
                           <tr><td> <label>Email</label></td><td>
                            <input type="text" name="email"     placeholder=" enter valid Email" required></td></tr>
                      <tr><td>  <label >Password</label></td><td>
                            <input type="password" name="pass1"  placeholder="Enter password at least 6 character" required </td></tr>                   
                      <tr><td>  <label>Confirm password</label></td><td>
                            <input type="password" name="pass2"   placeholder="Enter confirm password at lest 6 characterd" required></td></tr>
                      <tr><td></td><td> <button type="submit" name="sub" id="CheckPasswordMatch" value="register"> Register</button></td></tr>
       
                 </table>
      <%
          
    String name = request.getParameter("name");    
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass1");
    String conpa= request.getParameter("pass2");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","");
   PreparedStatement pmt=con.prepareStatement("insert into register values(?,?,?,?,?)");
   pmt.setString(1, name);
   pmt.setString(2, address);
   pmt.setString(3, email);
   pmt.setString(4, pass);
   pmt.setString(5, conpa);
 int i=pmt.executeUpdate();
    
    if (i==1) {
      if (pass.equals(conpa)){
      %>
      <p style="color:#4CAF50;"> Registration is Successful.
          Please Login Here</p> <a href='user.jsp'>Go to Login</a>
   <%
   }  else{
out.print("failed");
}

    } else {
        out.print("failed");
    }
    }
    catch(Exception e){
           
       }
%>


          </div></form>
  </section>
        </div>  
</div>
<%@include file="footer.jsp" %> 
    </body>
</html>
