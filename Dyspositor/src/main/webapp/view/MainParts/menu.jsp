<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authentication var="user" property="principal" />
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">Logo</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="/">Strona główna</a></li>
				<li><a href="/offerts">Oferty transportu</a></li>
				<li><a href="/drivers">Oferty kierowców</a></li>
				<li><a href="/offer">Dodaj ofertę</a></li>
				<li><a href="/contact">Kontakt</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="!isAuthenticated()">
					<li><a href="/login"><span
							class="glyphicon glyphicon-log-in"></span> Zaloguj</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a href="/myaccount"><span
							class="glyphicon glyphicon-user"></span> Profil</a></li>
					<li><a href="/logout"><span
							class="glyphicon glyphicon-log-out"></span> Wyloguj</a></li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>