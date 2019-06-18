<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<br/>
<br/>
<div class="login-form">
    <form action="checklogin">
        <h2 class="text-center">Log in</h2>       
        <div class="form-group">
            <input type="text" class="form-control" placeholder="email" name="email" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="pass" name="pass" required="required">
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary btn-block" value="log in ">
        </div>      
    </form>
    <br/>
<p>${msg}</p>
</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>