<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="confirm_Order.aspx.cs" Inherits="Eshopping.WebPages.confirm_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <h1>Confirm Your Order</h1>
    <p>Please Fill The Required Details To Confirm Your Order.</p>
    <br />
    <hr />
<div class="row">
<p>Customer ID</p>
<asp:TextBox ID="cus_id" runat="server" CssClass=" form-control" ReadOnly="True" ></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cus_id" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <p>Credit Card Number</p>
<asp:TextBox ID="crd_num" runat="server" CssClass=" form-control" ></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="crd_num" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <p>Total Bill</p>
<asp:TextBox ID="bill" runat="server" CssClass=" form-control"  ReadOnly="True"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="bill" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Confirm Order" CssClass="btn btn-success" OnClick="Button1_Click"/>
    <br />
    <br />
    <asp:Label ID="msg" runat="server"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conf_ordr %>" SelectCommand="SELECT * FROM [card_det]"></asp:SqlDataSource>
    </div>
      </div>
</asp:Content>
