<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Orders</title>
</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<div class="container">
<br/>
<br/>
<br/>
<br/>
<br/>
<h3>Search Customer Orders</h3>
<hr/>
<br/>
<form action="adminOrders">
<div class="row">

<div class="col-sm-10">
<input type="text" name="email" class="form-control" placeholder="Enter Customer Email"/>
</div>

<div class="col-sm-2">
<input type="submit" value="Search Orders" class="btn btn-success">
</div>

</div>
</form>
<br/>
<h4>Customer Details</h4>
<hr/>
		<c:forEach var="od" items="${cust}">

 <div class="row">
    <div class="col">
    <h5>Customer Address</h5>
<p>${od.Customer_Address}</p>
    </div>
    <div class="col">
   <h5>Customer Email</h5>
<p>${od.Customer_Email}</p>
    </div>
    <div class="col">
   <h5>Customer Name</h5>
<p>${od.Customer_Name}</p>
    </div>
    <div class="col">
 <h5>Customer Phone No.</h5>
<p>${od.Customer_Phone}</p>
    </div>
  </div>
  		</c:forEach>
  
<br/>
<h5>Customer Total Bill Is :Rs. <b>${bill}</b> /PKR </h5>
<hr/>
<table class="table">
<tr>
<td>Order Detail ID</td>
<td>Product Price</td>
<td>Product Quantity</td>
<td>Expanded Price</td>
<td>Order ID</td>
<td>Product ID</td>

<td>Product Image</td>
</tr>
		<c:forEach var="od" items="${listProd}">

<tr>
<td>${od.ID}</td>
<td>Rs.${od.Price} / PKR</td>
<td>${od.Quanity}</td>
<td><b>Rs.${od.Expanded_Price} / PKR</b></td>
<td>${od.ORDER_ID}</td>
<td>${od.PRODUCT_ID}</td>
<td>  
<img class="img-thumbnail" src="getProductPhoto/<c:out value='${od.PRODUCT_ID}'/>" width="80px" height="80px">
</td>
<td>
<form action="removeOrder">
<input type="hidden" name="od_id" value='${od.ID}'/>
<input type="submit" class="btn btn-danger" value="Remove">
</form>
</td>

</tr>
		</c:forEach>

</table>

</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>