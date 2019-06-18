<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="buyProducts.aspx.cs" Inherits="Eshopping.WebPages.buyProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 327px;
            height: 41px;
        }
        .auto-style4 {
            width: 327px;
            height: 35px;
        }
        .auto-style5 {
            width: 327px;
            height: 37px;
        text-align: center;
    }
        .auto-style6 {
            width: 327px;
            height: 45px;
        }
        .auto-style8 {
            width: 327px;
            height: 51px;
        }
        .auto-style9 {
            display: inline-block;
            max-width: 100%;
            padding: 4px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
<div class="text-center">
    <br />
<h2>List Of Product Availables</h2>
<p>Have A Look At The Products Which Are Availables In Our Stock</p>
    <br />
    <hr />

    <br />
<div class="row">
    <div class="col-lg-6">
       <div class="row">
           <div class="col-sm-9">
               <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Product Name"></asp:TextBox>
               <div class="text-right">
&nbsp;
               <asp:Label ID="lblmsg" runat="server"></asp:Label>
               </div>
               </div>
            <div class="col-sm-3">
         <asp:Button ID="Button6" runat="server" Text="Search Item" CssClass="btn btn-primary" OnClick="Button6_Click" Width="127px" />

           </div>
       </div>
    </div>
    <br />
       <br />
     
      <div class="col-lg-6">
<div class="row">
    
    <div class="col-sm-12">
  <div class="btn-group" role="group" aria-label="Basic example">
 
      <asp:Button ID="Button2" runat="server" Text="Foot Wear" CssClass="btn btn-success" OnClick="Button2_Click" />
      <asp:Button ID="Button3" runat="server" Text="Electric Appliances" CssClass="btn btn-success" OnClick="Button3_Click"  />
      <asp:Button ID="Button4" runat="server" Text="Body Wear" CssClass="btn btn-success" OnClick="Button4_Click"  />
      <asp:Button ID="Button5" runat="server" Text="Decorations" CssClass="btn btn-success" OnClick="Button5_Click"  />
      <asp:Button ID="Button7" runat="server" Text="All Products" CssClass="btn btn-success" OnClick="Button7_Click"  />

</div>
    </div>
</div>
    </div>
  
</div>
 
    </div>
    <div class="text-center">
       
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="4" CssClass="table" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>
                        <td class="auto-style4">
                            <br />
                            <br />
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style9" Height="301px" ImageUrl='<%# Eval("item_image") %>' Width="349px" BorderColor="#333300" BorderStyle="Ridge" BorderWidth="1px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" style="background-color: #FF3300; color: #FFFFFF">
                            <asp:Label ID="Label1" runat="server" Text=<%# Eval("Item_Name") %> Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;Product Cathegory -
                            <asp:Label ID="Label2" runat="server" Text=<%# Eval("Item_Cathegory") %> Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Product Price - Rs.
                            <asp:Label ID="Label3" runat="server" Text=<%# Eval("Item_Price") %> Font-Bold="True"></asp:Label>
                            &nbsp;/ PKR</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;<br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="BUY PRODUCT" Width="280px" Height="55px" Font-Bold="True" CommandName="viewDetails" CommandArgument=<%# Eval("Item_ID") %>/>
                            <br />
                            <br />
                            <asp:Image ID="Image4" runat="server" Height="26px" ImageUrl="~/images/blue-background-PNG.png" Width="359px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:buyProducts %>" SelectCommand="SELECT [Item_Cathegory], [Item_Price], [item_image], [Item_Name], [Item_ID], [Item_Description] FROM [Product]"></asp:SqlDataSource>
        <br />
       
    </div>
</div>

</asp:Content>
