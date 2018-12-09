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
				<form:form id="regForm" modelAttribute="company"
					action="/register/company" method="post">
					<div class="col-md-6">
						<div class="form-group">
							<form:label path="email" for="email"
								class="cols-sm-2 control-label">Adres email</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input path="email" type="email" class="form-control"
										name="email" id="email" placeholder="Podaj adres email" />
								</div>
								<form:errors path="email" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="name" for="name"
								class="cols-sm-2 control-label">Imię</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
									<form:input path="name" type="text" class="form-control"
										name="name" id="name" placeholder="Podaj imię" />
								</div>
								<form:errors path="name" cssClass="error" />

							</div>
						</div>
						<div class="form-group">
							<form:label path="surname" for="surname"
								class="cols-sm-2 control-label">Nazwisko</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-users fa" aria-hidden="true"></i></span>
									<form:input path="surname" type="text" class="form-control"
										name="surname" id="surname" placeholder="Podaj nazwisko" />
								</div>
								<form:errors path="surname" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="password" for="password"
								class="cols-sm-2 control-label">Hasło</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<form:input path="password" type="password"
										class="form-control" name="password" id="password"
										placeholder="Podaj hasło" />
								</div>
								<form:errors path="password" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Potwierdz
								hasło</label>
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


					<div class="col-md-6 rightPart">
						<div class="form-group">
							<form:label path="companyName" for="companyName"
								class="cols-sm-2 control-label">Nazwa firmy</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span>
									<form:input path="companyName" type="text" class="form-control"
										name="companyName" id="companyName" placeholder="Podaj nazwe firmy" />
								</div>
								<form:errors path="companyName" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="addres" for="addres"
								class="cols-sm-2 control-label">Adres</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span>
									<form:input path="addres" type="text" class="form-control"
										name="addres" id="addres" placeholder="Podaj adres" />
								</div>
								<form:errors path="addres" cssClass="error" />

							</div>
						</div>
						<div class="form-group">
							<form:label path="city" for="city"
								class="cols-sm-2 control-label">Miasto</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span>
									<form:input path="city" type="text" class="form-control"
										name="city" id="capacity"
										placeholder="Podaj miasto" />
								</div>
								<form:errors path="city" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="nip" for="nip"
								class="cols-sm-2 control-label">NIP</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span>
									<form:input path="nip" type="text" class="form-control"
										name="nip" id="nip" placeholder="Podaj nip firmy" />
								</div>
								<form:errors path="nip" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="phone" for="phone"
								class="cols-sm-2 control-label">Telefon</form:label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span>
									<form:input path="phone" type="text" class="form-control"
										name="phone" id="plate"
										placeholder="Podaj numer kontaktowy" />
								</div>
								<form:errors path="phone" cssClass="error" />
							</div>
						</div>
					</div>
					<div class="form-group ">
						<form:button id="register" name="register"
							class="btn btn-primary btn-lg btn-block login-button">Zarejestruj</form:button>
					</div>
					<div class="login-register">
						<a href="/login">Zaloguj</a>
					</div>


				</form:form>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="../MainParts/footer.jsp"%>
</body>
</html>


