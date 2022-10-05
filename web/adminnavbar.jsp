<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
                    <% session.invalidate();%>
			<li class="nav-item active"><a class="nav-link" href="adminhome.jsp">Admin Home
					<span class="sr-only">(current)</span>
			</a></li>
			
			
			<li class="nav-item"><a class="nav-link " href="adminregister.jsp">Register Here</a>
			</li>
                        <li class="nav-item"><a class="nav-link" href="additem.jsp">Add Item</a></li>
                        <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
                       
		</ul>
	    
            <a href="viewuser.jsp" class="btn btn-outline-light my-2 my-sm-0 mr-2">View User</a>
            <a href="index.jsp" class="btn btn-outline-light my-2 my-sm-0 mr-2">Logout</a>
			
        </div>
	
</nav>
