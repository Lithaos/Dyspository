<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<sec:authentication var="user" property="principal" />
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/">Dyspositor</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/">Home</a></li>
        <li><a href="/find">Find transport</a></li>
        <li><a href="/offer">Offer transport</a></li>
        <li><a href="/contact">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <sec:authorize access="!isAuthenticated()">
        <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
        <li><a href="/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </sec:authorize>
      </ul>
    </div>
  </div>
</nav>