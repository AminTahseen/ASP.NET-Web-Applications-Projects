<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Eshopping.WebPages.dataImages.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
  
    <div class="container">
          <br />
   <h1>Customer Profile</h1>
    <p>Your Profile Details Are Given Below. Please Edit if Any Changes You Want Or Delete Your Profile.</p>
    <br />
         <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="Logout" OnClick="Button3_Click" />
    <hr />
    <br />
<div class="row">
    <div class="col-lg-4">
 <asp:image ID="setincode" width="100%" height="300px" cssclass="img-thumbnail"  runat="server" ImageUrl="~/images/u.png"/>
    </div>
    <div class="col-lg-8">
        <div class="row">
<p>Customer Name</p>
<asp:TextBox ID="cust_name" runat="server" CssClass=" form-control" >-</asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
                <br />

      <div class="row">
          <div class="col-md-6">
          <p>Customer Contact Number</p>
              <asp:TextBox ID="Cust_contact" runat="server" CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="Cust_contact" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          <div class="col-md-6">
          <p>Customer&nbsp; Location </p>
              <asp:TextBox ID="cust_loc" runat="server"  CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_loc" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      </div>
          <br />
          <p>Customer Home Address</p>
        <asp:TextBox ID="cust_addr" runat="server"  CssClass=" form-control">-</asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_addr" ForeColor="Red"></asp:RequiredFieldValidator>
     
            <br />
              <div class="row">
          <div class="col-md-6">
          <p>Customer Username</p>
              <asp:TextBox ID="cust_user" runat="server" CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_user" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          <div class="col-md-6">
          <p>Customer Password </p>
              <asp:TextBox ID="cust_pass" runat="server"  CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="cust_pass" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      </div>
            
  </div>
        <br />
       <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Update Profile" OnClick="Button1_Click" />
       <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Delete Profile" OnClick="Button2_Click" />

        <br />
        <br />
        <asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:prof %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>

        </div>
</div>

    </div>
</asp:Content>
