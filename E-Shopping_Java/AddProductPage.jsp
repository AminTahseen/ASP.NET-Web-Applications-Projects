<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
$('document').ready(function () {
    $("#customFile").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imgshow').attr('src', e.target.result);
            }
            reader.readAsDataURL(this.files[0]);
        }
    });
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

  <div class="row">
  <br/>
  <br/>
  <div class="col-md-5">
  <img src="<spring:url value="/images/box.png"/>" width="400px" height="400px" id="imgshow" class="img-thumbnail"/>
  <div class="text-center">
  <p>Product Image</p>
  </div>
  </div>
  
  <div class="col-md-7">
  <h4>Add A New Product</h4>
  <hr/>
  <form:form method="POST"
  action="SaveProduct"
  enctype="multipart/form-data">
  
<div class="form-row">
    <div class="col">
     <p>Product Create Date</p>
<input type="datetime" class="form-control" name="date">
    </div>
  </div>
  <br>
  <div class="form-row">
    <div class="col">
     <p>Product Image</p>
      <div class="custom-file mb-3">
<input type="file" class="custom-file-input" id="customFile" name="photo">
      <label class="custom-file-label" for="customFile">Choose file</label>

</div>
    </div>
    <div class="col">
     <p>Product Name</p>
<input type="text" class="form-control"  name="name">
    </div>
  </div>
<br>
  <div class="form-row">
    <div class="col">
     <p>Product Category</p>
         <div class="form-group">
    <select class="form-control" name="cath">
      <option>House Cleaning</option>
      <option>Mobile Phones</option>
      <option>Eye Wear</option>
      <option>Electronic Stuff</option>
      <option>Clothing</option>
      <option>House Decorations</option>
    </select>
  </div>
    </div>
    <div class="col">
     <p>Product Price</p>
<input type="text" class="form-control"  name="price">
    </div>
  </div>
<br/>
<input type="submit" class="btn btn-success" value="Add New Product">
<br/>
<p>${msg}</p>
</form:form>
  
  </div>
  
  </div>
  
  

  
<br/>
<br/>
<br/>
<br/>


<br>


</div>
<br/>
<jsp:include page="Footer.jsp"></jsp:include>
<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>
</body>
</html>