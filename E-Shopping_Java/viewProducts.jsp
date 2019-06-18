<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>All Products</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>    

<script type="text/javascript">

</script>
<style>
.zoom{
position:relative;
overflow:hidden;
}
.zoom:hover img{
transform: scale(1.1);
-moz-transform: scale(1.1);
-webkit-transform: scale(1.1);
}
.zoom img{
transition:all 0.3s;
}
</style>
</head>
<jsp:include page="Header.jsp"></jsp:include>
<br/>
<body class="bg-light ">

<div class="container">
<br>
<br>
<br>
<h3>All Our Products</h3>
<p>Total Products Available <span class="badge badge-success">${totalProd}</span></p>
<br/>
<form action="viewByName">
<div class="row">

<div class="col-sm-10">
<input type="text" name="search" class="form-control" placeholder="Enter Product Name Or Category."/>
</div>

<div class="col-sm-2">
<input type="submit" value="Search Product" class="btn btn-success">
</div>

</div>
</form>
<br/>
<hr/>
<div class="row">
		<c:forEach var="listProd" items="${listProd}">
<div class="col-lg-3 col-md-3 col-sm-12">
<form action="prodbuy">
		
<div class="card">
<div class="zoom">
  <img class="card-img-top" src="getProductPhoto/<c:out value='${listProd.Code}'/>" height="250px" alt="Card image cap">
</div>
  <div class="card-body text-center">
    <h5 class="card-title">${listProd.Name}</h5>
    <hr>
        <p class="card-text">Rs. ${listProd.Price} /PKR</p>
    <div class="row">
    <div class="col">

        <div class="form-group">
    <select class="form-control" name="quantity">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
      <option>6</option>
      <option>7</option>
      <option>8</option>
      <option>9</option>
      <option>10</option>
    </select>
  </div>
    </div>
  <div class="col">
     <Button type="submit" class="btn btn-danger"> 
 <i class="fa fa-shopping-cart"></i>
 <br/>
 </Button>
    </div>
    </div>
  <input type="hidden" name="code" value='${listProd.Code}'>
    <input type="hidden" name="price" value='${listProd.Price}'>
        <input type="hidden" name="name" value='${listProd.Name}'>

  </div>
</div>

</form>
</div>
		</c:forEach>
</div>

</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>