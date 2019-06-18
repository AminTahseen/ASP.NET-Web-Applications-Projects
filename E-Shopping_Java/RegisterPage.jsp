<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<div class="container">
<br/>
<br/>
<br/>
<br/>
<h1>Create An Account.</h1>
<hr/>

<form action="saveUser">
<h5>Customer Email</h5>
<input type="text" class="form-control" name="cemail">
<br/>
<h5>Customer Password</h5>
<input type="password" class="form-control" name="cpass">
<br/>
<input type="submit" value="Create Account" class="btn btn-default">
</form>
<br/>
<p>${msg}</p>
</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>