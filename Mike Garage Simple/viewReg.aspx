<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewReg.aspx.cs" Inherits="Simple_DashBoard.viewReg" %>

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
    <h1>Car Registration Details</h1>      
    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>

          </div>
 </div>
            <br />
            <div class="container">
                <h3>These Cars Have Been Registered</h3>
                <br />
                <hr />
                <br />
                <asp:DataList ID="DataList1" runat="server" CssClass="table-responsive" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="auto-style1">
                            Register ID -
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("r_id") %>'></asp:Label>
                            <br />
                            <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" Height="205px" ImageUrl='<%# Eval("c_img") %>' Width="272px" />
                            <br />
                            Car ID -
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("c_id") %>'></asp:Label>
                            <br />
                            Car Price - Rs.
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("c_price") %>'></asp:Label>
                            <br />
                            Customer Name -
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_name") %>'></asp:Label>
                            <br />
                            Customer Location -
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("p_loc") %>'></asp:Label>
                            <br />
                            Amount Paid -
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("amount_paid") %>'></asp:Label>
                        </div>
                        <br />
                    </ItemTemplate>

                </asp:DataList>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:viewreg %>" ProviderName="<%$ ConnectionStrings:viewreg.ProviderName %>" SelectCommand="SELECT cars.c_price, cars.c_img, person.p_name, person.p_loc, cars.c_id, register.amount_paid, register.r_id FROM ((cars INNER JOIN register ON cars.c_id = register.c_id) INNER JOIN person ON register.p_id = person.p_id)"></asp:SqlDataSource>

            </div>
        </div>
    </form>
</body>
</html>
