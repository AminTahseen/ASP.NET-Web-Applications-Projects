<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="viewProdDetails.aspx.cs" Inherits="Eshopping.WebPages.viewProdDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 20px;
            width: 280px;
        }
        .auto-style4 {
            width: 280px;
        }
        .auto-style5 {
            width: 860px;
            height: 438px;
        }
        .auto-style7 {
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
        }
        .auto-style8 {
            width: 280px;
            height: 81px;
        }
        .auto-style9 {
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

    <br />
<div class="container">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
       <ItemTemplate>
  <div class="row">
      <div class="col-lg-6">
          <asp:Image ID="Image1" runat="server" Height="515px" Width="891px" ImageUrl='<%# Eval("item_image") %>' CssClass="auto-style7" />
      </div>
      <div class="col-lg-6">
          <table class="auto-style5">
              <tr>
                  <td class="auto-style4">
                      <br />
                      <br />
                      <asp:Label ID="Label1" runat="server" Text=<%# Eval("Item_Name") %> Font-Bold="True" Font-Size="60pt"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="15pt" Text="Product Price : "></asp:Label>
                      &nbsp;Rs .
                      <asp:Label ID="Label2" runat="server" Text=<%# Eval("Item_Price") %> Font-Bold="True" Font-Size="13pt"></asp:Label>
                      &nbsp;/ PKR</td>
              </tr>
              <tr>
                  <td class="auto-style8">
                      <br />
                      <br />
                      <br />
                      <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="15pt" Text="Product Description"></asp:Label>
                      <br />
                      <asp:Label ID="Label3" runat="server" Text=<%# Eval("Item_Description") %> Font-Bold="False" Font-Size="Medium"></asp:Label>
                      <span style="color: rgb(0, 0, 0); font-family: 'Open Sans', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; background-color: rgb(255, 255, 255)">&nbsp;</span><br /></td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      <br />
                      <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15pt" Text="Product Cathegory : "></asp:Label>
                      &nbsp;<asp:Label ID="Label4" runat="server" Text=<%# Eval("Item_Cathegory") %> Font-Size="15pt"></asp:Label>
                      <br />
                      <br />
                      <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15pt" Text="Quantity "></asp:Label>
                      <br />
                      <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="46px" Width="422px" TextMode="Number"></asp:TextBox>
                      <br />
                      <br />
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Font-Bold="True" ForeColor="White" Height="59px" Text="Order Now" Width="192px" CommandName="ordr" OnClick="Button1_Click" />
                      <br />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style4"></td>
              </tr>
          </table>

      </div>
  </div>
    </ItemTemplate>
</asp:DataList>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>

    </div>
    <br />
&nbsp;
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:view_details %>" SelectCommand="SELECT * FROM [Product] WHERE ([Item_ID] = @Item_ID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Item_ID" QueryStringField="id" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
