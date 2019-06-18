<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebTechAssignment.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/popper.min.js"></script>
    <script>

        function reg_confirm() {
            alert("Successfully Registered !")
       }
    </script>
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
                  <p>Register Now To Create Your Student Account</p>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Your Student ID"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Student ID Cannot Be Empty !" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Your Student Name" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r2" runat="server" Display="Dynamic" ErrorMessage="Student Name Cannot Be Empty !" ForeColor="#CC0000" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Your Student's Father Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r3" runat="server" Display="Dynamic" ErrorMessage="Student's Father Name Cannot Be Empty !" ForeColor="#CC0000" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        </div>
                        
                         <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Your Student Age"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r4" runat="server" Display="Dynamic" ErrorMessage="Student Age Cannot Be Empty !" ForeColor="#CC0000" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                        </div>
                        
                         <div class="form-group">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Enter Your Student Phone Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r5" runat="server" Display="Dynamic" ErrorMessage="Student Phone Number Cannot Be Empty !" ForeColor="#CC0000" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Enter Your Student Study Program" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r6" runat="server" Display="Dynamic" ErrorMessage="Student Study Program Cannot Be Empty !" ForeColor="#CC0000" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                        </div>                        
                       
                        <div class="form-group">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Enter Your Student Password" OnTextChanged="TextBox7_TextChanged1" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="r7" runat="server" Display="Dynamic" ErrorMessage="Student Password Cannot Be Empty !" ForeColor="#CC0000" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                        </div>

                                    <asp:Button ID="Button1" runat="server" Text="Register Now" CssClass="btn btn-outline btn-danger my-sm-0" OnClick="Button1_Click" />
  <br />
                       <br />
                   </div>

                 </div>
                <div class="row">
                    <div class="col" style="background-color:#ff5252; color:white;">
                  
<asp:Button ID="Button3" runat="server" Text="Login To Your Account" CssClass="form-control-plaintext" style="color: white;" OnClick="Button3_Click" CausesValidation="false"></asp:Button>

                   </div>
                 </div>

           </div>
                </center>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:reg_connection %>" ProviderName="<%$ ConnectionStrings:reg_connection.ProviderName %>" SelectCommand="SELECT * FROM [StudentData]"></asp:SqlDataSource>
    </form>
</body>
</html>
