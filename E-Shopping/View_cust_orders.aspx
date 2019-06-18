<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/admin.Master" AutoEventWireup="true" CodeBehind="View_cust_orders.aspx.cs" Inherits="Eshopping.WebPages.View_cust_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 86px;
        }
        .auto-style3 {
            width: 34%
        }
        .auto-style4 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
  <h1>Customer Orders</h1>
         <br />
         <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Search Orders"></asp:Label>
&nbsp;<asp:TextBox ID="cname" runat="server" CssClass="form-control" placeholder="Customer Name" Width="443px"></asp:TextBox>
         <br />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Search" Width="130px" OnClick="Button2_Click" />
         <br />
&nbsp;
    <br />
    <hr />
    </div>
    <br />
    <div class="container">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-hover" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
                <asp:BoundField DataField="quant" HeaderText="Quantity" SortExpression="quant" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" SortExpression="Customer_Name" />
                <asp:BoundField DataField="Item_ID" HeaderText="Item ID" InsertVisible="False" ReadOnly="True" SortExpression="Item_ID" />
                <asp:BoundField DataField="Item_Name" HeaderText="Item Name" SortExpression="Item_Name" />
                <asp:BoundField DataField="Item_Price" HeaderText="Item Price" SortExpression="Item_Price" />
                <asp:ImageField DataImageUrlField="item_image" HeaderText="Item Image" ControlStyle-Height="200px">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cust_ordrs %>" SelectCommand="SELECT Cust_orders.quant,Customer.Customer_ID, Customer.Customer_Name, Product.Item_ID,Product.Item_Name, Product.Item_Price, Product.item_image FROM Cust_orders INNER JOIN Customer ON Cust_orders.cust_id = Customer.Customer_ID INNER JOIN Product ON Cust_orders.Item_id = Product.Item_ID"></asp:SqlDataSource>

        <br />
<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Delete Order"></asp:Label>
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cid" runat="server" CssClass="form-control" Height="30px" Width="222px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="Delete Order" OnClick="Button3_Click" />
        
        <br />

    </div>
</asp:Content>
