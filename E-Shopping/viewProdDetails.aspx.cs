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
    public partial class viewProdDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Session["Cust_id"] == null)
                {
                    Response.Redirect("login.aspx");
                }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ordr")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["view_details"].ToString());
                try
                {
                    int item_id = Convert.ToInt32(Session["ITEM_ID"].ToString());
                    int cust_id = Convert.ToInt32(Session["Cust_id"].ToString());
                    TextBox txt = (TextBox)(e.Item.FindControl("TextBox1"));
                    int quant = Convert.ToInt32(txt.Text);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Cust_orders VALUES("+item_id+","+cust_id+","+quant+")", con);
                    cmd.ExecuteNonQuery();
                    lblmsg.Text = "Order Booked !";
                    con.Close();
                }
                catch (Exception er)
                {
                    lblmsg.Text = er.Message.ToString();
                }
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}