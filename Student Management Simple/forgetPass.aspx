<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPass.aspx.cs" Inherits="WebTechAssignment.HomePag" %>

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
    <form id="form1" runat="server">
        <div>
            <center>
                   
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
                  <p>Please Enter The Requirements For Changing Your Password</p>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Your Student ID" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="r1" runat="server" ErrorMessage="Username Cannot Be Empty !" ControlToValidate="TextBox1" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Your Old Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r2" runat="server" ErrorMessage="Password Cannot Be Empty !" ControlToValidate="TextBox2" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Your New Password" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r3" runat="server" ErrorMessage="New Password Cannot Be Empty !" ControlToValidate="TextBox3" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Re Enter Your New Password" TextMode="Password" ></asp:TextBox>
                            <asp:CompareValidator ID="c1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage=" New Password Does Not Match !" ForeColor="#CC0000"></asp:CompareValidator>
                        </div>
                         &nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Change My Password" CssClass="btn btn-primary form-control" style="background-color:#ff5252;border:0px; width:200px;" OnClick="Button1_Click" />
                    
                        <br />
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#99CC00" Visible="False"></asp:Label>
                        <br />
                   </div>

                 </div>
                <div class="row">
                    <div class="col" style="background-color:#ff5252; color:white;">
                        <asp:Button ID="Button3" runat="server" Text="Login To Your Account" CausesValidation="false" CssClass="form-control-plaintext" style="color: white;" OnClick="Button3_Click" ></asp:Button>

                   </div>
                 </div>

           </div>
                      
                </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:forget_det %>" ProviderName="<%$ ConnectionStrings:forget_det.ProviderName %>" SelectCommand="SELECT * FROM [StudentData]"></asp:SqlDataSource>
    </form>
</body>
</html>
