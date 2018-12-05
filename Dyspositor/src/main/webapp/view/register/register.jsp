<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="../MainParts/head.jsp"%>
<body>
	<%@ include file="../MainParts/menu.jsp"%>
	<div class="container text-center">

		<h1>Zarejestruj się jako:</h1>
		<br>
		<div class="row">

			<div class="col-sm-5">
				<a href="/register/driver"> <img
					src="https://www.ismtraining.ie/wp-content/uploads/Truck-Driver-small.jpg"
					class="img-responsive" style="width: 100%;" alt="Image">
				</a>
				<h4>Kierowca</h4>
			</div>
 			<div class="col-sm-2">
 			<h1 class="or">lub</h1>
 			</div>
			<div class="col-sm-5">
				<a href="/register/company"> <img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbuSXIJsqCnjbjyEcteDSv8_pPWBATwN-j4Rf9HhIIeV_t0x3s"
					class="img-responsive" style="width: 100%;" alt="Image">
				</a>
				<h4>Firma</h4>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="../MainParts/footer.jsp"%>
</body>
</html>


