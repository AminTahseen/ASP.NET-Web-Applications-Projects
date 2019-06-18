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
    public partial class View_cust_orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cust_ordrs"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Cust_orders.quant,Customer.Customer_ID, Customer.Customer_Name, Product.Item_ID,Product.Item_Name, Product.Item_Price, Product.item_image FROM Cust_orders INNER JOIN Customer ON Cust_orders.cust_id = Customer.Customer_ID INNER JOIN Product ON Cust_orders.Item_id = Product.Item_ID ", con);
            try
            {

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cust_ordrs"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Cust_orders.quant,Customer.Customer_ID, Customer.Customer_Name, Product.Item_ID,Product.Item_Name, Product.Item_Price, Product.item_image FROM Cust_orders INNER JOIN Customer ON Cust_orders.cust_id = Customer.Customer_ID INNER JOIN Product ON Cust_orders.Item_id = Product.Item_ID WHERE Customer.Customer_name='"+cname.Text+"'", con);
            try
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
              GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            cid.Text = gr.Cells[2].Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pay_det"].ToString());
            SqlCommand cmd = new SqlCommand("DELETE FROM Cust_orders WHERE cust_id=" + Convert.ToInt32(cid.Text) + "", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                refresh();
            }
            catch (Exception er) {

            }
        }
        protected void refresh() {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cust_ordrs"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Cust_orders.quant,Customer.Customer_ID, Customer.Customer_Name, Product.Item_ID,Product.Item_Name, Product.Item_Price, Product.item_image FROM Cust_orders INNER JOIN Customer ON Cust_orders.cust_id = Customer.Customer_ID INNER JOIN Product ON Cust_orders.Item_id = Product.Item_ID ", con);
            try
            {

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }
            cid.Text = "";
        }
    }
}