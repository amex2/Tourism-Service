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
#back-img{
background: url("img/R7.jpg");
width:100%;
height:100vh;
background-repeat:no-repeat;
background-size: cover;
}
</style>
    </head>
    <body>
       <%@include file="adminnavbar.jsp" %>
       <div id="back-img">
       <div class="container">
  <section id="content">
	<form action="adminregister.jsp" method="post" id="login">
		<h1 class="header"> food ordering website</h1>
	
            <marquee>    <h1 class="header"> please adimin man register</h1></marquee>
			<div class="form-group">
                            <label> name</label>
                            <input type="text"  name="name" class="form-control" id="name" placeholder="name" required ><br><br>
                            <label> address</label>
                            <input type="text" name="address"  class="form-control" id="address" placeholder="address" required><br>
                            <label>Email</label>
                            <input type="email" name="email"   class="form-control" id="InputEmail" placeholder="enter valid Email" required><br>
                        <label >password</label>
                            <input type="password" name="pass1" class="form-control" id="password" placeholder="Enterpassword character" required ><br>
                          
                            
                            <button type="submit" name="sub" value="register"> register</button>
                       
                        </div>
	
        <%
    String name = request.getParameter("name");    
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass1");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
   Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/ traveldb","root","");
   PreparedStatement pmt=com.prepareStatement("insert into adminreg values(?,?,?,?)");
   pmt.setString(1, name);
   pmt.setString(2, address);
   pmt.setString(3, email);
   pmt.setString(4, pass);
  
 int i=pmt.executeUpdate();
    
    if (i==1) {
      
      %>
      Registration is Successful.
Please Login Here <a href='admin.jsp'>Go to Login</a>
      <%
      
    } else {
        out.print("failed");
    }
    }
    catch(Exception e){
           
       }
%>
       
       </form>
  </section>

    </body>
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
       </div>
        </div>
        <%@include file="footer.jsp" %> 
    </body>
</html>
