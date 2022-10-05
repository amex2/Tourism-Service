<%-- 
    Document   : user
    Created on : Mar 17, 2022, 5:27:50 AM
    Author     : admin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer Page</title>
        <link rel="stylesheet" href="img/css.css"> 
        <%@include file="all.jsp"%>
        <style type="text/css">
.back-img{
background: url("img/R5.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size: cover;
}
</style>
    </head>
    <body>
       <%@include file="navbar.jsp" %>
       <div class="back-img">
<div class="container">
  <section id="content">
	<form action="user.jsp" method="post" id="login">
            <marquee> <h1 class="header"style="color:purple">welcome to our website dear custmer </h1></marquee>
  			<div >
    			<label for="InputEmail">Email address</label>
    				<input type="email" name="email" class="form-control" id="InputEmail" placeholder="Email" required>
  			</div>
  			<div class="form-group">
    			<label for="InputPassword">Password</label>
    				<input type="password" name="password" class="form-control" id="InputPassword" placeholder="Password" required>
  			</div>
  			 
  			<div class="checkbox">
    			<label>
     				<input type="checkbox"> Remember Me
    			</label>
  			</div>
  			<button type="submit" class="btn btn-success btn-block" name="submit">Submit</button>
			<div align="JUSTIFY">New user?<a class="register" href="register.jsp"><b> <i>Register here</i></b></a></div> 
	
		


          <% 
        RequestDispatcher rd;
             String email=request.getParameter("email");
             String password=request.getParameter("password");
             String sub=request.getParameter("submit");
            try{  
  if(sub!=null){
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","");
          Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from register");
        boolean say=false;
          while(rs.next()){
                if(email.equals(rs.getString(3))&&password.equals(rs.getString(4))){
                    say=true;
                    session.setAttribute("email", email);
              rd=request.getRequestDispatcher("usermainpage.jsp");
                 rd.forward(request, response); 
              }
             }
      if(!say){
      %>
           <font style="color:red;"> <%="Incorrect email or password!"%></font>
            <%
      }    
  }
  }catch(Exception e){out.println(e);}
  finally{
                out.close();
  }
           
%>
  </form>
  </section>
		</div>
</div>
<%@include file="footer.jsp" %> 
    </body>
    
</html>




