<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Eshopping.WebPages.BasicPages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
           <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="../images/n2_800x400.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>Discount Offers !</h3>
            <p>Money Money.</p>
          </div>      
        </div>

        <div class="item">
          <img src="../images/hood_800x400.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>Different Cathegories</h3>
            <p>Lorem ipsum...</p>
          </div>      
        </div>
          <div class="item">
          <img src="../images/bm_800x400.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>Fast Delivery</h3>
            <p>Lorem ipsum...</p>
          </div>      
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="well">
        <h4>Our Service</h4>
      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
    </div>
    <div class="well">
        <h4>Our Motto</h4>
       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
    </div>
    <div class="well">
        <h4>Our Goal</h4>
       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
    </div>
  </div>
</div>
<hr>
</div>

<div class="container text-center">    
  <h3>What We Do</h3>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img src="../images/what we do.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>What We Do</p>
    </div>
    <div class="col-sm-3"> 
      <img src="../images/purp.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Our Purpose</p>    
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
      </div>
      <div class="well">
       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
      </div>
      <div class="well">
       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
      </div>
    </div>  
  </div>
  <hr>
</div>

<div class="container text-center">    
  <h3>Our Recent Products</h3>
  <br>
 
  <div class="row container">
    <div class="col-sm-2">
      <img src="../images/n2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Shoes</p>
    </div>
    <div class="col-sm-2"> 
      <img src="../images/hood.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Clothes</p>    
    </div>
    <div class="col-sm-2"> 
      <img src="../images/n3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Electric Items</p>
    </div>
       <div class="col-sm-2"> 
      <img src="../images/n3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Electric Items</p>
    </div>
       <div class="col-sm-2"> 
      <img src="../images/n3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Electric Items</p>
    </div>
       <div class="col-sm-2"> 
      <img src="../images/n3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Electric Items</p>
    </div>
  </div>
     
   
</div><br>
</asp:Content>
