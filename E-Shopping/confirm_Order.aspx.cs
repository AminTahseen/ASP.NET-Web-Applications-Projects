using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshopping.WebPages
{
    public partial class confirm_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cust_id"] == null && Session["bill"] == null)
            {
                Response.Redirect("login.aspx");
            }
            cus_id.Text = Session["Cust_id"].ToString();
            bill.Text = Session["bill"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conf_ordr"].ToString());
                int cid = Convert.ToInt32(cus_id.Text);
                int cardno = Convert.ToInt32(crd_num.Text);
                int tbill = Convert.ToInt32(bill.Text);
                SqlCommand cmd = new SqlCommand("INSERT INTO card_det VALUES(" + cid + "," + cardno + "," + tbill + ")", con);
                con.Open();
                cmd.ExecuteNonQuery();
                msg.Text = "Order Confirmed !";
                con.Close();
            }
            catch (Exception er)
            {
                msg.Text = er.Message.ToString();
            }
        }
    }
}