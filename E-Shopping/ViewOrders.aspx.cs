using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshopping.WebPages
{
    public partial class ViewOrders : System.Web.UI.Page
    {
        int total;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Cust_id"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ordrs"].ToString());
                SqlCommand cmd = new SqlCommand("SELECT Cust_orders.quant, Customer.Customer_Name, Product.Item_ID,Product.Item_Name, Product.Item_Price, Product.item_image FROM Cust_orders INNER JOIN Customer ON Cust_orders.cust_id = Customer.Customer_ID INNER JOIN Product ON Cust_orders.Item_id = Product.Item_ID WHERE Cust_orders.cust_id = " + Convert.ToInt32(Session["Cust_id"].ToString()) + "", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        int price = Convert.ToInt32(rdr[0].ToString());
                        int quant = Convert.ToInt32(rdr[4].ToString());
                        int gt = price * quant;
                        total += gt;
                    }
                    bill.Text = total.ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["bill"] = bill.Text;
            Response.Redirect("confirm_Order.aspx");
        }
    }
}