<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eshopping.WebPages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="loginform" class="outer-wrapper">

  <div class="inner-wrapper">
<div class="container">
  <div class="row">
    <div class="col-sm-4 col-sm-offset-4">
      <h2 class="text-center">Account Login</h2>
          <p class="text-center">Please Sign In To Your Account To Get Started</p>

        <br />
  <div class="form-group">
      <asp:Label ID="Label1" runat="server" Text="Your Username" Font-Bold="True"></asp:Label>
  
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
  </div>
  <div class="form-group">
<asp:Label ID="Label2" runat="server" Text="Your Password" Font-Bold="True"></asp:Label>
 
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
  </div>
  
        <div class="text-center">
   <asp:Button ID="Button1" runat="server" Text="Login Now" CssClass="btn btn-danger" OnClick="Button1_Click" />

            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Admin Login" />

            <br />
            <br />
            <p>Don't Have One ? <a href="CreateAccount.aspx">Create Now</a></p>
            <p>
                <asp:Label ID="status" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:log %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            </p>
    </div>
        </div>
  </div>
</div>
</div>

</section>
</asp:Content>
