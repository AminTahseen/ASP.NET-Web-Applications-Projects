<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailPage.aspx.cs" Inherits="WebTechAssignment.detailPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/popper.min.js"></script>

    <script type="text/javascript">
       function confirmation() {
           if (confirm('are you sure you want to delete ?')) {
           return true;
           }else{
           return false;
           }
        }
        function update() {
            alert("Updated Succesfully !")
        }
   </script>
<head runat="server">
    <title></title>
</head>
<body style="background-color:#f5f6fa;">
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-light justify-content-between" style="background-color:#ff5252;">
  <a class="navbar-brand h3" style="color:white"><h3>Sky High University</h3><p style="font-size: medium;">Institute Of Modern Computing</p></a>
                <asp:Button ID="Button1" runat="server" Text="Log Out" CssClass="btn btn-outline-light my-2 my-sm-0" OnClick="Button1_Click" />
  
</nav>
            <br />
            <div class="container">
                <div class="row">
                    <div class="col">
                        <img src="pics/icon-256x256.png"  width="500px"  height="500px"/>
                        
                            </div>
                    <div class="col">
                        <asp:Label ID="Label7" runat="server" Text="Student Profile" CssClass=" col-form-label-lg h1"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Sky High University Student Profile Details" CssClass=" col-form-label-sm"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:det_connection %>" ProviderName="<%$ ConnectionStrings:det_connection.ProviderName %>" SelectCommand="SELECT * FROM [StudentData]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:det_con %>" ProviderName="<%$ ConnectionStrings:det_con.ProviderName %>" SelectCommand="SELECT * FROM [StudentData]"></asp:SqlDataSource>
                        <hr class="bg-danger" />
                        <div class="row">
                            <div class="col-sm-5"><asp:Label ID="Label1" runat="server" Text="Student ID" CssClass=" col-form-label-lg h3"></asp:Label></div>
                            <div class="col"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged">Detail Goes Here</asp:TextBox></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-5"><asp:Label ID="Label2" runat="server" Text="Student Name" CssClass="col-form-label-lg h3"></asp:Label></div>
                            <div class="col"><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control">Detail Goes Here</asp:TextBox></div>
                        </div>
                        <br />
                        <div class="row">
                             <div class="col-sm-5"><asp:Label ID="Label3" runat="server" Text="Student Father Name" CssClass="col-form-label-lg h3"></asp:Label></div>
                            <div class="col"><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control">Detail Goes Here</asp:TextBox></div>
                        </div>
                        <br />
                                                <div class="row">
                            <div class="col-sm-5"><asp:Label ID="Label4" runat="server" Text="Student Age" CssClass=" col-form-label-lg h3"></asp:Label></div>
                            <div class="col"><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control">Detail Goes Here</asp:TextBox></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-5"><asp:Label ID="Label5" runat="server" Text="Student Phone No." CssClass="col-form-label-lg h3"></asp:Label></div>
                            <div class="col"><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control">Detail Goes Here</asp:TextBox></div>
                        </div>
                        <br />
                        <div class="row">
                             <div class="col-sm-5"><asp:Label ID="Label6" runat="server" Text="Student Program" CssClass="col-form-label-lg h3"></asp:Label></div>
                            <div class="col"><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control">Detail Goes Here</asp:TextBox></div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3"><asp:Button ID="Button2" runat="server" Text="Update My Details" CssClass="btn btn-success my-2 my-sm-0" OnClick="Button2_Click" OnClientClick="return update();"/></div>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3"><asp:Button ID="Button3" runat="server" Text="Delete My Account" CssClass="btn btn-danger my-2 my-sm-0" OnClick="Button3_Click1" OnClientClick="return confirmation();" /></div>
                           <div class="col-sm-1"></div>
                            <div class="col-sm-3"><asp:Button ID="Button4" runat="server" Text="Refresh Details" CssClass="btn btn-primary my-2 my-sm-0" OnClick="Button4_Click2"/></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <br />
        <br />
        <footer class="page-footer font-small blue" style="background-color:#ff5252; color:white;">

 
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a style="color:white;" href="https://mdbootstrap.com/bootstrap-tutorial/"> MDBootstrap.com</a>
  </div>


</footer>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mystring %>" ProviderName="<%$ ConnectionStrings:mystring.ProviderName %>" SelectCommand="SELECT * FROM [StudentData]"></asp:SqlDataSource>
    </form>
</body>
</html>
