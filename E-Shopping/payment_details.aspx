<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/admin.Master" AutoEventWireup="true" CodeBehind="payment_details.aspx.cs" Inherits="Eshopping.WebPages.payment_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 123px;
            height: 22px;
            text-align: left;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            width: 40%
        }
        .auto-style6 {
        width: 123px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container">
  <h1>Customer Payment Details</h1>
         <br />
         <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Search Details"></asp:Label>
&nbsp;<asp:TextBox ID="cname" runat="server" CssClass="form-control" placeholder="Customer Name" Width="443px"></asp:TextBox>
         <br />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Search" Width="130px" OnClick="Button2_Click"/>
         <br />
&nbsp;
    <br />
    <hr />
             <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-hover" GridLines="None" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                     <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                     <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" SortExpression="Customer_Name" />
                     <asp:BoundField DataField="credit_card_number" HeaderText="Credit Card Number" SortExpression="credit_card_number" />
                     <asp:BoundField DataField="Total_bill" HeaderText="Total Bill" SortExpression="Total_bill" />
                 </Columns>
             </asp:GridView>

              <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Edit Data"></asp:Label>
         <br />
         <table class="auto-style4">
             <tr>
                 <td class="auto-style6">
                     <asp:Label ID="Label3" runat="server" Text="Customer ID"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="cid" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label4" runat="server" Text="Credit Card No"></asp:Label>
                 </td>
                 <td class="auto-style3">
                     <asp:TextBox ID="ccno" runat="server" CssClass="form-control"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style6">
                     <asp:Label ID="Label5" runat="server" Text="Total Bill"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="cbill" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <br />
&nbsp;
         <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="Save Details" OnClick="Button3_Click" />
&nbsp;
         <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Text="Delete Details" OnClick="Button4_Click" />
    <br />
    </div>
         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pay_det %>" SelectCommand="SELECT Customer.Customer_ID, Customer.Customer_Name, card_det.credit_card_number,card_det.Total_bill FROM card_det INNER JOIN Customer ON card_det.Cust_id = Customer.Customer_ID " DeleteCommand="DELETE FROM card_det WHERE Cust_id=@Customer_ID">
             <DeleteParameters>
                 <asp:Parameter Name="Customer_ID" />
             </DeleteParameters>
         </asp:SqlDataSource>
        

</asp:Content>
