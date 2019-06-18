<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cardet.aspx.cs" Inherits="Simple_DashBoard.cardet" %>

<%@ Register Src="~/navigationbar.ascx" TagPrefix="uc1" TagName="navigationbar" %>


<!DOCTYPE html>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
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
    <h1>Garage Car Details</h1>      
    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>

          </div>
 </div>
            <br />
            <br />
           	<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            
                                <div class="card-body row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <i class="fas fa-search h4 text-body"></i>
                                    </div>
                                    <!--end of col-->
                                    <div class="col">
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg form-control-borderless" placeHolder="Search By Car ID"></asp:TextBox>
                                    </div>
                                    <!--end of col-->
                                    <div class="col-auto">
                                       <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-lg btn-success" OnClick="Button1_Click" />
                                    </div>
                                    <!--end of col-->
                                </div>
                            
                        </div>
                        <!--end of col-->
                    </div>
            <br />

              <div class="container">
                   <asp:DataList ID="DataList1" runat="server" CssClass="table-responsive-lg" RepeatColumns="4" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="100%" OnItemCommand="DataList1_ItemCommand">
                       <ItemTemplate>
                           <div class="auto-style4" aria-orientation="horizontal">
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("c_id") %>'></asp:Label>
                               <br />
                               <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" Height="154px" ImageUrl='<%# Eval("c_img") %>' Width="174px" />
                               <br />
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                               &nbsp;-
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("c_price") %>'></asp:Label>
                               <br />
                               <br />
                               <asp:Button ID="Button2" runat="server" CssClass="btn-success btn" Text="View Details" CommandName="viewDetails" CommandArgument='<% #Eval("c_id") %>' />
                               <br />
                           </div>
                           <br />
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                       </div>
                   <br />
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars %>" ProviderName="<%$ ConnectionStrings:cars.ProviderName %>" SelectCommand="SELECT * FROM [cars]"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
