<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadDetails.aspx.cs" Inherits="Simple_DashBoard.uploadDetails" %>

<%@ Register Src="~/navigationbar.ascx" TagPrefix="uc1" TagName="navigationbar" %>


<!DOCTYPE html>
<script>
    function imgprev(input) {
        if (input.files && input.files[0]) {
            var fildr = new FileReader();
            fildr.onload = function (e) {
                $('#Image2').attr('src', e.target.result);
            }
            fildr.readAsDataURL(input.files[0]);
        }
    }
</script>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navigationbar runat="server" ID="navigationbar" />
        <div>
          <div class="jumbotron">
              <div class="container">
                  <br />
                  <br />
                  <br />
    <h1>Upload Car Details</h1>      
    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>

          </div>
 </div>
            <div class="container">
 <div class="card">
     <div class="card-header">
     <div class=" card-title">
         Insert Car Details Please 
     </div>
         </div>
     <div class="card-body">
           <div class="row">
                <div class="col text-left">
                    <div class="row">
                     
                     <div class="col-4">Car ID</div>
                     <div class="col-8"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                    <br />
                    <div class="row">
                     <div class="col-4">Car Name</div>
                     <div class="col-8"><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                    <br />
                    <div class="row">
                    <div class="col-4">Car Price</div>
                     <div class="col-8"><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                    <br />
                    <div class="row">
                    <div class="col-4">Car Image</div>
                     <div class="col-8">  
                         <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control-file " onchange="imgprev(this);"/></div>
                    </div>

                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Insert Data" CssClass="btn-primary btn" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
                </div>
                <div class="col text-center">
                   <asp:Image ID="Image2" runat="server" ImageUrl="~/images/img.png" CssClass="img-thumbnail"/>

                </div>
            </div>
     </div>
 </div>
                </div>
                
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
