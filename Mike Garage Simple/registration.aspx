<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Simple_DashBoard.registration" %>

<%@ Register Src="~/navigationbar.ascx" TagPrefix="uc1" TagName="navigationbar" %>


<!DOCTYPE html>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 66.666667%;
            flex: 0 0 66.666667%;
            max-width: 66.666667%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:navigationbar runat="server" ID="navigationbar" />
            <div class="jumbotron">
              <div class="container">
                  <br />
                  <br />
                  <br />
    <h1>Please Note Before You Register</h1>      
    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>

          </div>
 </div>
            <br />

            <div class=" container">
            <h3>Register Your Car</h3>
<hr />
                <br />
               <div class="row">                     

                   <div class="col">
                        <div class="row">
                     <div class="col-4">Customer ID</div>
                     <div class="col-8"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                       <br />
                <div class="row">
                     
                     <div class="col-4">Customer Name</div>
                     <div class="col-8"><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                         <br />
                <div class="row">
                     
                     <div class="col-4">Customer Address</div>
                     <div class="auto-style1"><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                         <br />
                <div class="row">
                     
                     <div class="col-4">Customer Location</div>
                     <div class="col-8"><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                   </div>
                   <div class="col">
                        <div class="row">
                     
                     <div class="col-4">Registration ID</div>
                     <div class="col-8"><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                         <br />
                <div class="row">
                     
                     <div class="col-4">Amount Paid</div>
                     <div class="col-8"><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox></div>
                    </div>
                         <br />
                <div class="row">
                     
                     <div class="col-4">Car ID</div>
                     <div class="col-8"><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" OnTextChanged="TextBox7_TextChanged" ReadOnly="True"></asp:TextBox></div>
                    </div>
                         <br />
                <div class="row">
                     
                     <div class="col-4">Customer ID</div>
                     <div class="col-8"><asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" OnTextChanged="TextBox8_TextChanged"></asp:TextBox></div>
                    </div>

                   </div>

               </div>
                <br />
        <asp:Button ID="Button1" runat="server" Text="Buy Car" CssClass="btn-primary btn" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass=" btn-danger btn" OnClick="Button2_Click"  />

                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="#33CC33"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pers %>" ProviderName="<%$ ConnectionStrings:pers.ProviderName %>" SelectCommand="SELECT * FROM [person]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:reg %>" ProviderName="<%$ ConnectionStrings:reg.ProviderName %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>

            </div>
        </div>
    </form>
</body>
</html>
