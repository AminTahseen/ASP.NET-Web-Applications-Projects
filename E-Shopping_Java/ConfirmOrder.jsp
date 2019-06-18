<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Order</title>
</head>
<jsp:include page="Header.jsp"></jsp:include>

<body>
<div class="container">
<br/>
<br/>
<br/>
<br/>
<br/>
<h2>Create Your Order</h2>
<p>Please Remember Your Order ID For Later Use.</p>
<hr/>
<br/>

  <form action="order"> 
<div class="form-row">
    <div class="col">
     <p>Amount</p>
<input type="text" class="form-control" name="amount">
    </div>
  </div>
  <br>
  <div class="form-row">
    <div class="col">
     <p>Customer Address</p>
<input type="text" class="form-control" name="caddr">
    </div>
    <div class="col">
     <p>Customer Email</p>
<input type="text" class="form-control"  name="cemail">
    </div>
  </div>
<br>
  <div class="form-row">
    <div class="col">
     <p>Customer Name</p>
<input type="text" class="form-control" name="cname">
    </div>
    <div class="col">
     <p>Customer Phone</p>
<input type="text" class="form-control"  name="cphone">
    </div>
  </div>
<br/>
 <div class="form-row">
    <div class="col">
     <p>Order Date</p>
<input type="datetime" class="form-control" name="odate">
    </div>
  </div>
  <br/>
<input type="submit" class="btn btn-success" value="New Order">

</form>

</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>