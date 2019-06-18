using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshopping.WebPages.dataImages
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Cust_id"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else if (Session["admin_id"] != null)
                {
                    Response.Redirect("AddProduct.aspx");
                }
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["prof"].ToString());
                SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE Customer_ID=" + Convert.ToInt32(Session["Cust_id"].ToString()) + "", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        cust_name.Text = rdr[1].ToString();
                        Cust_contact.Text = rdr[2].ToString();
                        cust_loc.Text = rdr[3].ToString();
                        cust_addr.Text = rdr[4].ToString();
                        cust_user.Text = rdr[5].ToString();
                        cust_pass.Text = rdr[6].ToString();
                    }
                }
                con.Close();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["Cust_id"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["prof"].ToString());
            try
            {
                con.Open();
                int id = Convert.ToInt32(Session["Cust_id"].ToString());
                SqlCommand cmd = new SqlCommand("UPDATE Customer SET Customer_Name='" + cust_name.Text + "',Customer_Contact='" + Cust_contact.Text + "',Customer_Location='" + cust_loc.Text + "',Customer_Address='" + cust_addr.Text + "', Customer_Username='" + cust_user.Text + "', Customer_Password='" + cust_pass.Text + "' WHERE Customer_ID=" +id+"", con);
                cmd.ExecuteNonQuery();
                msg.Text = "Profile Updated";
                con.Close();
            }
            catch (Exception er)
            {
                msg.Text = er.Message.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["prof"].ToString());
            try
            {
                con.Open();
                int id = Convert.ToInt32(Session["Cust_id"].ToString());
                SqlCommand cmd = new SqlCommand("DELETE FROM Customer WHERE Customer_ID=" + id + "", con);
                cmd.ExecuteNonQuery();
                Session["Cust_id"] = null;
                Response.Redirect("login.aspx");
                con.Close();
            }
            catch (Exception er)
            {
                msg.Text = er.Message.ToString();
            }
        }
    }
}