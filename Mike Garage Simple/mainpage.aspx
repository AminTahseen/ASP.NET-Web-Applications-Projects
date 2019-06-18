<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="Simple_DashBoard.mainpage" %>

<%@ Register Src="~/navigationbar.ascx" TagPrefix="uc1" TagName="navigationbar" %>

<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <uc1:navigationbar runat="server" id="navigationbar" />
        <div>
          <div class="jumbotron text-center" style="background-image:url('images/bg.jpg'); background-size:cover; color:white;">
              <br />
              <br />
              <br />
              <br />
               <br />
              <br />
              <h1>Welcome To Mike's Garage Dashboard</h1>
              <p>Here You'll Be Able To See And Edit Records Of Data.</p>
              <br />
              <br />
              <br />
              <br />
              
          </div>
            <div class="container">
                <div class="row text-center">
                  <div class="col">
                      <h3>Modified Cars</h3>
                      <hr />
                      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                         Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                         when an unknown printer took a galley of type and scrambled it to make a type
                         specimen book.</p>
                  </div>
                   <div class="col">
                    <h3>Reliable Price</h3>
                       <hr />
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                         Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                         when an unknown printer took a galley of type and scrambled it to make a type
                         specimen book.</p>
                  </div>
                   <div class="col">
                       <h3>Happy Service !</h3>
                       <hr />
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                         Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                         when an unknown printer took a galley of type and scrambled it to make a type
                         specimen book.</p>
                  </div>
              </div>
                
            </div>
             <div class="jumbotron" style="background-color:#ff5e57; color:white;">
            <div class="container">
               
                <div class="row">
                    <div class=" col-8">
                        <h3>Why Mike's Garage ?</h3>
                         <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                         Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                         when an unknown printer took a galley of type and scrambled it to make a type
                         specimen book.</p>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                         Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                         when an unknown printer took a galley of type and scrambled it to make a type
                         specimen book.</p>
                    </div>
                    <div class="col">
                        <br />
                        <img src="images/car1.jpg" class="img-thumbnail"/>
                    </div>
</div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
