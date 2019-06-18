<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<script type="text/javascript" src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{
	
});

</script>
<style>
.jumbotron {
background-image:url(<spring:url value="/images/jumbotron_image.png"/>);
background-size: cover;
color:white;
}

</style>
</head>
<jsp:include page="Header.jsp"></jsp:include>

<body class="bg-light ">
<br/>
<br/>
<div class="jumbotron">
<br/>
<br/>
<br/>
<br/>
<div class="text-center">
<h1>Looking For Something To Buy ?</h1>
<p>
We Provide You With Best Of Our Services.
</p>
</div>

<form action="viewByName" class="form-inline justify-content-center">

<input type="text" name="search" class="form-control col-5" placeholder="Search For Product"/>
<br/>
<input type="submit" class="btn btn-success" value="Search"/>

</form>
<br/>
<br/>
</div>

<div class="container">
<h4>Browse Our Categories</h4>
<hr/>
<br>

<div class="card-group">
<!--Category-1-->
<div class="card">
  <img class="card-img-top" src="<spring:url value="/images/householdclean.png"/>" height="200px" alt="Card image cap">
  <div class="card-body text-center">
    <h5 class="card-title">House Cleaning</h5>
    
   <form action="viewProductByName">
 <input type="hidden" name="cath" value="House Cleaning">
<input type="submit" value="Click Here" class="btn btn-default">
 </form> 
 
  </div>
</div>
<!--Category-2-->
<div class="card">
  <img class="card-img-top" src="<spring:url value="/images/Mobile.png"/>" height="200px" alt="Card image cap">
  <div class="card-body text-center">
    <h5 class="card-title">Mobile Phones</h5>
    
<form action="viewProductByName">
 <input type="hidden" name="cath" value="Mobile">
<input type="submit" value="Click Here" class="btn btn-default">
 </form>   
 
  </div>
</div>
<!--Category-3-->
<div class="card">
  <img class="card-img-top" src="<spring:url value="/images/glassess.png"/>" height="200px" alt="Card image cap">
  <div class="card-body text-center">
    <h5 class="card-title">Eye Wear</h5>
    
 <form action="viewProductByName">
 <input type="hidden" name="cath" value="Eye">
<input type="submit" value="Click Here" class="btn btn-default">
 </form>   
 
  </div>
</div>

</div>

<!--  -->
<div class="card-group">
<!--Category-1-->
<div class="card">
  <img class="card-img-top" src="<spring:url value="/images/electric.png"/>" height="200px" alt="Card image cap">
  <div class="card-body text-center">
    <h5 class="card-title">Electronic Stuff</h5>
    
<form action="viewProductByName">
 <input type="hidden" name="cath" value="Electronic">
<input type="submit" value="Click Here" class="btn btn-default">
 </form> 
 
      </div>
</div>
<!--Category-2-->
<div class="card">
  <img class="card-img-top" src="<spring:url value="/images/clothes.jpg"/>" height="200px" alt="Card image cap">
  <div class="card-body text-center">
    <h5 class="card-title">Clothing</h5>
    
 <form action="viewProductByName">
 <input type="hidden" name="cath" value="clothing">
<input type="submit" value="Click Here" class="btn btn-default">
 </form>     
 
  </div>
</div>
<!--Category-3-->
<div class="card">
  <img class="card-img-top" src="<spring:url value="/images/hd.png"/>" height="200px" alt="Card image cap">
  <div class="card-body text-center">
    <h5 class="card-title">House Decorations</h5>
    
 <form action="viewProductByName">
 <input type="hidden" name="cath" value="decorations">
<input type="submit" value="Click Here" class="btn btn-default">
 </form>    
 
  </div>
</div>

</div>
<br/>
</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>

</body>

</html>