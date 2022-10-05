<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin login Page</title>
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
        <%@include file="navbar.jsp" %>
        <div class="back-img">
       <form action="admin.jsp" method="post" id="login">
<div class="container-fluid ">
		<div class="row">
			<div class="col-md-2 offset-md-3"></div>
			<div class="card mt-4">
				<div class="card-header text-center text-white ">
					<i class="fa fa-user-o" aria-hidden="true"></i>
                                        <h4 style="color:black; background-color:white; ">Admin Login</h4>
				</div>
				<div class="card-body">

					
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"name="email">

					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1" name="pass">
					</div>

					<button type="submit" class="btn btn-primary btn-block" name ="sub">Login</button>

				</div>
			</div>

		</div>
	</div>
        <% 
        RequestDispatcher rd;
             String email=request.getParameter("email");
             String password=request.getParameter("pass");
             String sub=request.getParameter("sub");
            try{  
  if(sub!=null){
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb","root","");
          Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from adminreg");
        boolean say=false;
          while(rs.next()){
                if(email.equals(rs.getString(3)) && password.equals(rs.getString(4))){
                    say=true;
                     session.setAttribute("email", email);
              rd=request.getRequestDispatcher("adminhome.jsp");
                 rd.forward(request, response); 
              }
                else{
                    out.print("invalid pass or email!"); 
                }
             }
      if(!say){
      %>
           <font style="color:red;"> <%="Incorrect email or password!"%></font>
            <%
      }    
  }
  }catch(Exception e){
}
  finally{
                out.close();
  }
           
%></form></div>
<%@include file="footer.jsp" %> 
    </body>
</html>

