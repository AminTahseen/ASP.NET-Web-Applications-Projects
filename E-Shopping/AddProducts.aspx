
<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/admin.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Eshopping.WebPages.Products.AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
 <script type="text/javascript">
          function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=setincode.ClientID%>').prop('src', e.target.result)
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

</script>
<div class="container">
  <h1>Manage Products</h1>
    <p>Please Fill The Required Details To Manage Product To The Website.</p>
    <br />
    <div class="row">
         <div class="col-md-10">
             <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Product Name"></asp:TextBox>
         </div>
         <div class="col-md-2">
             <asp:Button ID="Button4" runat="server" Text="Get Details" CssClass="btn btn-primary" OnClick="Button4_Click" />
             <br />

             </div>

    </div>
    <br />
      <hr />

    <br />

<div class="row">
  <div class="col-sm-4">
 <asp:image ID="setincode" width="100%" height="300px" cssclass="img-thumbnail"  runat="server" ImageUrl="~/images/prodicon.png"/>
          </div>
  <div class="col-sm-8">
            <p>Product ID (For Read Only)</p>
              <asp:TextBox ID="ProductID" runat="server" CssClass=" form-control" ReadOnly="True"></asp:TextBox>
      <div class="row">
          <div class="col-md-6">
              <br />
          <p>Product Name</p>
              <asp:TextBox ID="ProductName" runat="server" CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="ProductName" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          <div class="col-md-6">
          <br />
          <p>Product Cathegory</p>
              <asp:TextBox ID="ProductCath" runat="server"  CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="ProductCath" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      </div>
          <br />
          <p>Product Description</p>
        <asp:TextBox ID="ProductDescrip" runat="server"  CssClass=" form-control">-</asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="ProductDescrip" ForeColor="Red"></asp:RequiredFieldValidator>
      <div class="row">
          <div class="col-md-6">
          <br />
          <p>Product Price</p>
              <asp:TextBox ID="ProductPrice" runat="server"  CssClass=" form-control">-</asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot Be Leave Empty" ControlToValidate="ProductPrice" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          
          <div class="col-md-6">
          <br />
          <p>Product Image</p>
              <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" onchange="ImagePreview(this);"/>
          </div>
      </div>
      <br />
      <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add Product" OnClick="Button1_Click" />
      <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Update Product" OnClick="Button2_Click" />
      <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="Delete Product" OnClick="Button3_Click" />

      <br />
      <br />
      <asp:Label ID="lblmsg" runat="server"></asp:Label>
      <br />

      <br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebTechConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

  </div>
</div>
    </div>
    <div>
</div>

</asp:Content>
