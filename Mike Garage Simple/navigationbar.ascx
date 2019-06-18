<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navigationbar.ascx.cs" Inherits="Simple_DashBoard.navigationbar" %>
<nav class="navbar navbar-expand-lg  navbar-dark fixed-top" style="background-color:#ff5e57;">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Mike's Garage !</a>

  <!-- Links -->
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#hide">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="hide">
  <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link" href="mainpage.aspx">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">About & Contact</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Car Details
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="uploadDetails.aspx">Insert Details</a>
        <a class="dropdown-item" href="cardet.aspx">View Details</a>
      </div>
    </li>
        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Registration Details
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="viewReg.aspx">View Details</a>
      </div>
    </li>
  </ul>
      </div>
</nav>
    