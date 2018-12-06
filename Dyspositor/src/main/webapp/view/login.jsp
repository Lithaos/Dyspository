<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="MainParts/head.jsp"%>
 <link rel="stylesheet" href="/login.css">
 
<body>
	<%@ include file="MainParts/menu.jsp"%>

	<div class="wrapper fadeInDown">
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
		<h1>
			<font color="red"> Niepoprawne dane! Spróbuj ponownie!<br />
			</font>
		</h1>
	</c:if>
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
				<img
					src="https://bloximages.newyork1.vip.townnews.com/stltoday.com/content/tncms/assets/v3/editorial/c/bf/cbf7a730-0c2e-5e7f-b975-cd4577e01a9f/598dfd518d794.image.png"
					id="icon" alt="User Icon" />
				<h1>Logowanie</h1>
			</div>

			<!-- Login Form -->
			<form action="login" method='POST'>
				<input type="text" id="email" class="fadeIn second" name="username"
					placeholder="Email"> <input type="password" id="password"
					class="fadeIn third" name="password" placeholder="Hasło"> <input
					type="submit" class="fadeIn fourth" value="Zaloguj">
			</form>

			<!-- Remind Passowrd -->
			<div id="formFooter">
				<a class="underlineHover" href="/register/">Rejestracja</a>
			</div>

		</div>
	</div>

</body>
</html>


