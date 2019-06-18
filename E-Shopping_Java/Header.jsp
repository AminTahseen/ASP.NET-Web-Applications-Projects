<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ page import="edu.cs.web.service.SHOPPINGService"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
    <link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark fixed-top" style="background-color:#eb4d4b;">
 <div class="container">
    <a class="navbar-brand" href="home">
    <img src="<spring:url value="/images/cart.png"/>" width="30" height="30" class="d-inline-block align-top" alt="">
    KhareedLo.PK
  </a>


  <!-- Links -->
  <ul class="nav navbar-nav ml-auto">
  <%
  String name2=(String)session.getAttribute("admin"); 
  if(null!=name2){
  %>
    <li class="nav-item" >
      <a class="nav-link"  href="home"></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="about">About Us</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="addProduct">Add Product</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="admin">Check Orders</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="logout">Logout</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">Welcome Admin</a>
    </li>
    <%}else if(name2==null){ %>
    <li class="nav-item">
      <a class="nav-link" href="home">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="about">About Us</a>
    </li>
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
    User Account
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="Register">Register Now</a>
        
        <%
        String name=(String)session.getAttribute("cust_email"); 
        if(null!=name){
        %>        
        <a class="dropdown-item" href="logout">Logout</a>
        <%}else if(name==null)
        {%>
        <a class="dropdown-item" href="login">Login</a>
        <%} %>
        
      </div>
    </li>
        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       Our Products
      </a>
      <div class="dropdown-menu">
       <%
        String name3=(String)session.getAttribute("cust_email"); 
        if(null!=name3){
        %>
              <a class="dropdown-item" href="viewProducts">Buy Products</a>
        <%}else{ %>
             <a class="dropdown-item" href="viewProducts">All Products</a>
      <%} %>
      </div>
    </li>
        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       User Orders
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="CreateOrder">Create An Order</a>
        <a class="dropdown-item" href="viewCart">View Cart</a>
      </div>
    </li>
    <%} %>
  </ul>
  </div>
</nav>

       <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>