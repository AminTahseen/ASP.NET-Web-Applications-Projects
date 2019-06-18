<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="WebTechAssignment.WebForm1" %>

<!DOCTYPE html>

<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/popper.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#f5f6fa;">
   
        <div>
            <center>
                   <form id="form1" runat="server">
            <div class="container col-sm-4" style="margin-top:70px;">
                <div class="row">
               
                    <div class="col" style="background-color:#ff5252; color:white;">
                        &nbsp;
                    <h3 class="text-center">SKY HIGH UNIVERSITY</h3>
                        <p class="text-center">Institute Of Modern Computing</p>
                   </div>

                 </div>
                <div class="row">
               
                    <div class="col" style="background-color:#F8EFBA">
                        &nbsp;
                  <p>Please Login To Your Account To Continue</p>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Your Student ID" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Cannot Be Empty !" ControlToValidate="TextBox1" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Your Password" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Cannot Be Empty !" ControlToValidate="TextBox2" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                       <asp:Button ID="Button1" runat="server" Text="Login Now" CssClass="btn btn-primary form-control" style="background-color:#ff5252;border:0px; width:200px;" OnClick="Button1_Click"/>

                         &nbsp;
                       <asp:Button ID="Button2" runat="server" Text="Change My Password" CssClass="form-control-plaintext" style="color: darkgray;" OnClick="Button2_Click" CausesValidation="false"></asp:Button>
                        <br />
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#99CC00" Visible="False"></asp:Label>
                        
                   </div>

                 </div>
                <div class="row">
                    <div class="col" style="background-color:#ff5252; color:white;">
                         <asp:Button ID="Button3" runat="server" Text="New Student ? Register Now" CssClass="form-control-plaintext" style="color: white;" OnClick="Button3_Click" CausesValidation="false"></asp:Button>
                   </div>
                 </div>

           </div>
                       </form>
                </center>
        </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:login_connection %>" ProviderName="<%$ ConnectionStrings:login_connection.ProviderName %>" SelectCommand="SELECT * FROM [StudentData]"></asp:SqlDataSource>
    
</body>
</html>
