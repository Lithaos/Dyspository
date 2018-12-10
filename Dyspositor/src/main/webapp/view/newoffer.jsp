<%@ include file="MainParts/head.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<body>
	<%@ include file="MainParts/menu.jsp"%>
	<div class="container text-center">
		<div class="card text-center">
			<form:form id="offerform" modelAttribute="offer" action="/offer"
				method="post">
				<div class="card card-default">
					<div class="card-header">
						<h4 class="card-title">
							<i class="text-gold"></i> <b>PUNKT POCZĄTKOWY</b>
						</h4>
					</div>

					<div class="card-body">
						<div class="row">
							<div class="col-md-3 col-lg-4">
								<div class="form-group">
									<label class="control-label">Kraj</label> <input type="text"
										class="form-control" placeholder="Podaj kraj" />
								</div>
							</div>
							<div class="col-md-1 col-lg-4">
								<div class="form-group">
									<label class="control-label">Miasto</label> <input type="text"
										class="form-control" placeholder="Podaj miasto" />
								</div>
							</div>
							<div class="col-md-1 col-lg-4">
								<div class="form-group">
									<label class="control-label">Województwo</label> <input
										class="form-control" type="text"
										placeholder="Podaj województwo" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4 col-lg-4">
								<div class="form-group">
									<label class="control-label">Ulica</label> <input type="text"
										class="form-control" placeholder="Podaj ulicę" />
								</div>
							</div>
							<div class="col-md-2 col-lg-3">
								<div class="form-group">
									<label class="control-label">Nr budynku</label> <input
										type="text" class="form-control"
										placeholder="Podaj numer budynku" />
								</div>
							</div>

							<div class="col-md-3 col-lg-3">
								<div class="form-group">
									<label class="control-label">Telefon kontaktowy</label> <input
										type="text" class="form-control"
										placeholder="Podaj telefon kontaktowy" />
								</div>
							</div>

							<div class="col-md-3 col-lg-2">
								<div class="form-group">
									<label class="control-label">Kod pocztowy</label> <input
										type="text" class="form-control"
										placeholder="Podaj kod pocztowy" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 col-lg-12">
								<div class="form-group">
									<label class="control-label">Dodatkowe informacje</label> <input
										type="text" class="form-control"
										placeholder="Dodatkowe informacje..." />
								</div>
							</div>
						</div>
					</div>

				</div>

			</form:form>

		</div>

		<div class="card text-center">
			<form:form id="offerform" modelAttribute="offer" action="/offer"
				method="post">
				<div class="card card-default">
					<div class="card-header">
						<h4 class="card-title">
							<i class="text-gold"></i> <b>PUNKT KOŃCOWY</b>
						</h4>
					</div>

					<div class="card-body">
						<div class="row">
							<div class="col-md-3 col-lg-4">
								<div class="form-group">
									<label class="control-label">Kraj</label> <input type="text"
										class="form-control" placeholder="Podaj kraj" />
								</div>
							</div>
							<div class="col-md-1 col-lg-4">
								<div class="form-group">
									<label class="control-label">Miasto</label> <input type="text"
										class="form-control" placeholder="Podaj miasto" />
								</div>
							</div>
							<div class="col-md-1 col-lg-4">
								<div class="form-group">
									<label class="control-label">Województwo</label> <input
										class="form-control" type="text"
										placeholder="Podaj województwo" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4 col-lg-4">
								<div class="form-group">
									<label class="control-label">Ulica</label> <input type="text"
										class="form-control" placeholder="Podaj ulicę" />
								</div>
							</div>
							<div class="col-md-2 col-lg-3">
								<div class="form-group">
									<label class="control-label">Nr budynku</label> <input
										type="text" class="form-control"
										placeholder="Podaj numer budynku" />
								</div>
							</div>

							<div class="col-md-3 col-lg-3">
								<div class="form-group">
									<label class="control-label">Telefon kontaktowy</label> <input
										type="text" class="form-control"
										placeholder="Podaj telefon kontaktowy" />
								</div>
							</div>

							<div class="col-md-3 col-lg-2">
								<div class="form-group">
									<label class="control-label">Kod pocztowy</label> <input
										type="text" class="form-control"
										placeholder="Podaj kod pocztowy" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 col-lg-12">
								<div class="form-group">
									<label class="control-label">Dodatkowe informacje</label> <input
										type="text" class="form-control"
										placeholder="Dodatkowe informacje..." />
								</div>
							</div>
						</div>
					</div>

				</div>

			</form:form>

		</div>


	</div>
	<br>
	<%@ include file="MainParts/footer.jsp"%>
</body>
</html>


