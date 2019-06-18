<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Cart</title>
</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<div class="container">
<br/>
<br/>
<br/>
<br/>



<br/>
<h4>Welcome    <b>${sessionScope.cust_email}</b> </h4>
<h6>Your Current Balance Is : ${am}</h6>
<br/>
<form action="loadCart">
<input type="submit" value="Load My Cart" class="btn btn-warning">
</form>
<br/>
<h5>Your Total Bill Is :Rs. <b>${bill}</b> /PKR </h5>
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
<img class="img-thumbnail" src="getProductPhoto/<c:out value='${od.PRODUCT_ID}'/>" width="100px" height="100px">
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

<br/>
</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>