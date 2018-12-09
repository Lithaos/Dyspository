<%@ include file="MainParts/head.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<body>
	<%@ include file="MainParts/menu.jsp"%>
	<div class="container text-center">
		<div class="card text-center">
			<table class="table table-hover shopping-cart-wrap">
				<thead class="text-muted">
					<tr>
						<th scope="col">Product</th>
						<th scope="col" width="200" class="text-center">Typ produktu</th>
						<th scope="col" width="200" class="text-center">Wynagrodzenie</th>
						<th scope="col" width="200" class="text-center"></th>
					</tr>
				</thead>
				<tbody>
					<%@ include file="parts/offertrow.jsp"%>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<%@ include file="MainParts/footer.jsp"%>
</body>
</html>


