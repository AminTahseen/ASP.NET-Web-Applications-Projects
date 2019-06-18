<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Eshopping.WebPages.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <h1>Create Your Account</h1>
    <p>Please Fill The Required Details To Create Your Account And Get Started.</p>
 
    <br />
    <hr />
<div class="row">
<p>Your Full Name</p>
<asp:TextBox ID="cust_name" runat="server" CssClass=" form-control" OnTextChanged="cust_name_TextChanged"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
      <div class="row">
          <div class="col-md-6">
          <p>Your Contact Number</p>
              <asp:TextBox ID="Cust_contact" runat="server" CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="Cust_contact" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          <div class="col-md-6">
          <p>Your Location </p>
              <asp:TextBox ID="cust_loc" runat="server"  CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_loc" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      </div>
          <br />
          <p>Your Home Address</p>
        <asp:TextBox ID="cust_addr" runat="server"  CssClass=" form-control">-</asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_addr" ForeColor="Red"></asp:RequiredFieldValidator>
      <div class="row">
          <div class="col-md-6">
          <br />
          <p>Your Account&nbsp; Username</p>
              <asp:TextBox ID="cust_user" runat="server"  CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_user" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          
          <div class="col-md-6">
          <br />
          <p>Customer Password</p>
          <asp:TextBox ID="cmp_main_pass" runat="server"  CssClass=" form-control" TextMode="Password">-</asp:TextBox>
              <br />
          </div>
      </div>
    <br />
    
     <p>Comfirm Password</p>
    <asp:TextBox ID="cmp_pass" runat="server" CssClass=" form-control" TextMode="Password">-</asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cmp_pass" ControlToValidate="cmp_main_pass" ErrorMessage="Password Do Not Match " ForeColor="Red"></asp:CompareValidator>
  
      <br />

      <br />
      <br />
              <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Create Account" OnClick="Button1_Click"/>

    </div>
        <br />
       
      
      <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:user %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    </div>
</asp:Content>
