<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Confirm Order</title>
<jsp:include page="Header.jsp"></jsp:include>

</head>
<body>
<div class="container">
<br/>
<br/>
<br/>
<br/>
 <div class="row">
  
 <div class="col-md-5">
 <br/>
  <br/>
  <img src="getProductPhoto/<c:out value='${pcode}'/>" width="400px" height="400px" id="imgshow" class="img-thumbnail"/>
  <div class="text-center">
  <h6>${pname}</h6>
  </div>
  </div>
  
  <div class="col-md-7">
<br/>
<h2>Confirm Your Order.</h2>
<hr/>
<br/>

  <form action="orderDetail"> 
<div class="form-row">
    <div class="col">
     <p>Amount</p>
<input type="text" class="form-control" name="amount" value='${amount}' readonly>
    </div>
  </div>
  
  <br/>
  
  <div class="form-row">
    <div class="col">
    <p>Product Price</p>
  <input type="text" class="form-control" name="price" value='${pprice}' readonly>
    </div>
    <div class="col">
     <p>Product Quantity</p>
<input type="text" class="form-control" name="quantity" value='${pquant}' readonly>
    </div>
  </div>
  
  <br/>
  
  <div class="form-row">
    <div class="col">
    <p>Order ID</p>
  <input type="text" class="form-control" name="oid" value='${oid}' readonly>
    </div>
    <div class="col">
     <p>Product ID</p>
<input type="text" class="form-control" name="pid" value='${pcode}' readonly>
    </div>
  </div>
  <br/>
  <Button type="submit" class="btn btn-danger"> 
 <i class="fa fa-shopping-cart"></i>
   Order Now
 </Button>  
  </form>
  <br/>
  <p>${msg}</p>
  
  </div>
</div>
</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>