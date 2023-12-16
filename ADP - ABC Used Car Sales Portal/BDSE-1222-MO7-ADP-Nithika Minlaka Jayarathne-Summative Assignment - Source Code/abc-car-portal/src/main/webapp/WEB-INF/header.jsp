<!-- Navbar -->

<div class="" style="margin-bottom: 0px;">
	<nav class="navbar navbar-expand-lg navbar " style="background: darkslategrey; color: white; text-decoration: none;">
		<div class="container-fluid">
			<a href="cars" class="navbar-brand" data-toggle="tooltip"
				data-placement="top" title="Home"> <img
				src="/images/logo.png" height="40">
			</a>
			<button type="button" class="navbar-toggler"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">


				<sec:authorize access="!isAuthenticated()">
					<div class="navbar-nav">

						<a href="register_user" class="nav-item nav-link" style="text-decoration: none; color:white;">Register</a> <a
							href="about_us" class="nav-item nav-link" style="text-decoration: none; color:white;">About Us</a> <a
							href="contact_us" class="nav-item nav-link" style="text-decoration: none; color:white;">Contact Us</a>
					</div>
					<div class="navbar-nav ms-auto">
						
						<a href="login" class="nav-item nav-link" style="text-decoration: none; color:white;">Login</a>
					</div>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

					<sec:authorize access="hasAnyRole('Users', 'Administrator')">
						<div class="navbar-nav">
							<a class="nav-item nav-link" href="cars"  style="text-decoration: none; color:white;">Home</a>
						</div>

					</sec:authorize>

					<sec:authorize access="hasRole('Administrator')">
						<div class="navbar-nav">
							 <a
								class="nav-item nav-link" href="all_cars" style="text-decoration: none; color:white;">Car Management</a> <a
								class="nav-item nav-link" href="users" style="text-decoration: none; color:white;">User Management</a>
						</div>

					</sec:authorize>

					<sec:authorize access="hasAnyRole('Administrator','Users')">

						<div class="navbar-nav px-5" style="width: 30%;position: relative; left: 200px">
							<sf:form action="search" method="get" style="width: 100%;">
								<div class="input-group">
								
									<input type="search" class="form-control rounded"
										placeholder="Search by the Model" aria-label="Search" name="keyword"
										aria-describedby="search-addon"  style="width: 50px;"/>
									<button type="submit" class="btn btn-outline-danger">search</button>
								</div>
							</sf:form>
						</div>

						<!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
						<div class="navbar-nav ms-auto">

							<a class="nav-item nav-link p-3" href="profile" style="text-decoration: none; color:white;"> <img src="/images/cs logo sss.png" alt="avatar"
							class="rounded-circle img-fluid" style="width: 35px;">&nbsp;&nbsp;Profile</a>

							<form action="logout" method="post" style="padding: 7px;">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="submit" name="Logout"
									value="Logout" class="btn btn-danger"></input>
							</form>
							
						</div>


					</sec:authorize>


				</sec:authorize>




			</div>
		</div>
	</nav>
	<div class="container-fluid" style="padding-bottom: 40px; margin: auto;height: 270px;box-shadow: 5px 5px 15px 5px darkslategrey;">
		<a href="cars" class="navbar-brand " data-toggle="tooltip"
			data-placement="top" title="Home"> <img alt="logo" src="images/gtrR35.png" width="450" height="200" style="position: absolute;left: 510px;">
			<h1 style="font-size: 40px; font-weight: bold; color: red;text-align:center;padding-top: 190px">ABC <span style="font-size: 30px; font-weight: bold; color: black;font-style: italic;font-family: cursive;">Car</span> PORTAL</h1>
		</a>
	</div>
</div>