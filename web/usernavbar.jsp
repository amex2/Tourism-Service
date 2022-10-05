<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="#"><i class="fa fa-users" aria-hidden="true"></i>G-5 Restaurant</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
                    <% session.invalidate();%>
			<li class="nav-item active"><a class="nav-link" href="usermainpage.jsp"><i class="fa fa-users" aria-hidden="true"></i>User Home
					<span class="sr-only">(current)</span>
			</a></li>
                        <li class="nav-item"><a class="nav-link" href="menu.jsp"><i class="fa fa-plus-circle" aria-hidden="true"></i>Menu</a></li>
			
                        <li class="nav-item"><a class="nav-link" href="other.jsp"><i class="fa fa-plus-circle" aria-hidden="true"></i>Other</a></li>
		</ul>
	    
            <a href="order.jsp" class="btn btn-outline-light my-2 my-sm-0 mr-2"><i class="fa fa-user-o" aria-hidden="true"></i>Order</a>
            <a href="feedback.jsp" class="btn btn-outline-light my-2 my-sm-0 mr-2"><i class="fa fa-user-plus" aria-hidden="true"></i>FeadBack</a>
            <a href="index.jsp" class="btn btn-outline-light my-2 my-sm-0 mr-2"><i class="fa fa-user-plus" aria-hidden="true"></i>Logout</a>
			
	</div>
	</div>
</nav>
