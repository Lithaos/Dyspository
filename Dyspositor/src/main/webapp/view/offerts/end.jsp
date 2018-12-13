<%@ include file="../MainParts/head.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<body>
	<%@ include file="../MainParts/menu.jsp"%>
	<div class="container text-center">
		<div class="card text-center">
			<form:form id="offerform" modelAttribute="addresPoint" action="/step"
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
									<form:label class="control-label" path="country">Kraj</form:label> <form:input path="country" type="text"
										class="form-control" placeholder="Podaj kraj" />
								</div>
							</div>
							<div class="col-md-1 col-lg-4">
								<div class="form-group">
									<form:label class="control-label" path="city">Miasto</form:label> <form:input path="city" type="text"
										class="form-control" placeholder="Podaj miasto" />
								</div>
							</div>
							<div class="col-md-1 col-lg-4">
								<div class="form-group">
									<form:label path="province" class="control-label">Województwo</form:label> <form:input
										path="province" class="form-control" type="text"
										placeholder="Podaj województwo" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4 col-lg-4">
								<div class="form-group">
									<form:label class="control-label" path="street">Ulica</form:label> <form:input type="text"
										path="street" class="form-control" placeholder="Podaj ulicę" />
								</div>
							</div>
							<div class="col-md-2 col-lg-3">
								<div class="form-group">
									<form:label class="control-label" path="numberOfBuilding">Nr budynku</form:label> <form:input
										path="numberOfBuilding" type="text" class="form-control"
										placeholder="Podaj numer budynku" />
								</div>
							</div>

							<div class="col-md-3 col-lg-3">
								<div class="form-group">
									<form:label class="control-label" path="phone">Telefon kontaktowy</form:label> <form:input
										path="phone" type="text" class="form-control"
										placeholder="Podaj telefon kontaktowy" />
								</div>
							</div>

							<div class="col-md-3 col-lg-2">
								<div class="form-group">
									<form:label class="control-label" path="postCode">Kod pocztowy</form:label> <form:input
										path="postCode" type="text" class="form-control"
										placeholder="Podaj kod pocztowy" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 col-lg-12">
								<div class="form-group">
									<form:label class="control-label" path="informations">Dodatkowe informacje</form:label> <form:input
										path="informations" type="text" class="form-control"
										placeholder="Dodatkowe informacje..." />
								</div>
							</div>
						</div>
						<form:button id="start" name="start"
							class="btn btn-primary btn-lg btn-block login-button">Zapisz punkt końcowy</form:button>
					</div>
				</div>
			</form:form>

		</div>

	</div>
	<br>
	<%@ include file="../MainParts/footer.jsp"%>
</body>
</html>


