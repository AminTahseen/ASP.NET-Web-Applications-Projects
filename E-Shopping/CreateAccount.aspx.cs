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
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cust_name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["user"].ToString());
                SqlCommand cmd = new SqlCommand("INSERT INTO Customer VALUES('" + cust_name.Text + "','" + Cust_contact.Text + "','" + cust_loc.Text + "','" + cust_addr.Text + "','" + cust_user.Text + "','" + cmp_pass.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblmsg.Text = "Account Created !";
                con.Close();
            }
            catch (Exception er) {
                lblmsg.Text = er.Message.ToString();
            }
            }
    }
}