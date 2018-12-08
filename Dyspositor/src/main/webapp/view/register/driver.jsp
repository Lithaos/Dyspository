<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../MainParts/head.jsp"%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<body>
	<%@ include file="../MainParts/menu.jsp"%>
	<div class="container text-center">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Rejestracja</h1>
					<hr />
				</div>
			</div>
			<div class="main-login main-center">
				<form:form id="regForm" modelAttribute="user"
					action="/register/driver" method="post">
<div class="col-md-6">
					<div class="form-group">
						<form:label path="email" for="email" class="cols-sm-2 control-label">Adres email</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span> <form:input path="email"
									type="email" class="form-control" name="email" id="email"
									placeholder="Podaj adres email" />
							</div>
							<form:errors path = "email" cssClass = "error" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="name" for="name" class="cols-sm-2 control-label">Imię</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span> <form:input path="name" type="text" class="form-control"
									name="name" id="name" placeholder="Podaj imię" />
							</div>
							<form:errors path = "name" cssClass = "error" />
							
						</div>
					</div>
					<div class="form-group">
						<form:label path="surname" for="surname" class="cols-sm-2 control-label">Nazwisko</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span> <form:input path="surname" type="text" class="form-control"
									name="surname" id="surname" placeholder="Podaj nazwisko" />
							</div>
							<form:errors path = "surname" cssClass = "error" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="password" for="password" class="cols-sm-2 control-label">Hasło</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <form:input path="password"
									type="password" class="form-control" name="password"
									id="password" placeholder="Podaj hasło" />
							</div>
							<form:errors path = "password" cssClass = "error" />
						</div>
					</div>

					<div class="form-group">
						<label for="confirm" class="cols-sm-2 control-label">Potwierdz hasło</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="password" class="form-control" name="confirm"
									id="confirm" placeholder="Potwierdz hasło" />
							</div>
						</div>
					</div>
</div>



<!-- TO CHANGE! -->
<div class="col-md-6">
					<div class="form-group">
						<form:label path="email" for="email" class="cols-sm-2 control-label">Adres email</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span> <form:input path="email"
									type="email" class="form-control" name="email" id="email"
									placeholder="Podaj adres email" />
							</div>
							<form:errors path = "email" cssClass = "error" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="name" for="name" class="cols-sm-2 control-label">Imię</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span> <form:input path="name" type="text" class="form-control"
									name="name" id="name" placeholder="Podaj imię" />
							</div>
							<form:errors path = "name" cssClass = "error" />
							
						</div>
					</div>
					<div class="form-group">
						<form:label path="surname" for="surname" class="cols-sm-2 control-label">Nazwisko</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span> <form:input path="surname" type="text" class="form-control"
									name="surname" id="surname" placeholder="Podaj nazwisko" />
							</div>
							<form:errors path = "surname" cssClass = "error" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="password" for="password" class="cols-sm-2 control-label">Hasło</form:label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <form:input path="password"
									type="password" class="form-control" name="password"
									id="password" placeholder="Podaj hasło" />
							</div>
							<form:errors path = "password" cssClass = "error" />
						</div>
					</div>

					<div class="form-group">
						<label for="confirm" class="cols-sm-2 control-label">Potwierdz hasło</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="password" class="form-control" name="confirm"
									id="confirm" placeholder="Potwierdz hasło" />
							</div>
						</div>
					</div>
</div>
					<div class="form-group ">
						<form:button id="register" name="register" 
							class="btn btn-primary btn-lg btn-block login-button">Register</form:button>
					</div>
					<div class="login-register">
						<a href="/login">Login</a>
					</div>


				</form:form>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="../MainParts/footer.jsp"%>
</body>
</html>


