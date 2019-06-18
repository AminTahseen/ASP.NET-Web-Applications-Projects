<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewDetails.aspx.cs" Inherits="Simple_DashBoard.viewDetails" %>

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
            width: 100%;
            height: 141px;
        }
        .auto-style2 {
            width: 391px;
        }
        .auto-style3 {
            width: 100%;
            height: 234px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navigationbar runat="server" ID="navigationbar" />
        <div>
            <br />
            <br />
            <div class="jumbotron" style="">
                
            <div class="container">
                <br />
                <br />
                <h3>Mike's Garage Car Details</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <br />
                <br />
                <asp:DataList ID="DataList1" runat="server" CssClass="table-responsive" DataKeyField="c_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
                    <ItemTemplate>
                        
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" Height="233px" ImageUrl='<%# Eval("c_img") %>' Width="393px" />
                                </td>
                                <td>
                                    <table class="auto-style3">
                                        <tr>
                                            <td>Car ID -
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("c_id") %>' OnLoad="Label1_Load"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;Car Name -
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                                <br />
                                                &nbsp;<br /><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>is 
                                                simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<span>&nbsp;</span></span></td>
                                        </tr>
                                        <tr>
                                            <td>Car Price - Rs .
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("c_price") %>'></asp:Label>
                                                <br />
                                                <br />
                                   <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Height="64px"  Text="Buy Now " Width="212px" OnClick="Button2_Click" />

                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Height="64px" OnClick="Button1_Click" Text="Back " Width="212px" />
                <br />
            </div>
          </div>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:det %>" ProviderName="<%$ ConnectionStrings:det.ProviderName %>" SelectCommand="SELECT * FROM [cars] WHERE ([c_id] = ?)" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:QueryStringParameter Name="c_id" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
