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
    public partial class login : System.Web.UI.Page
    {
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cust_id"] != null)
            {
                Response.Redirect("Profile.aspx");
            }
            

                if (CheckBox1.Checked)
                {
                name = "admin";
                }

            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (name == "admin")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["log"].ToString());
                SqlCommand cmd = new SqlCommand("SELECT Customer_ID,Customer_Username,Customer_Password FROM Customer WHERE Customer_Username='Admin' AND Customer_Password='Admin123'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        Session["admin_id"] = rdr[0].ToString();
                        Response.Redirect("AddProducts.aspx");
                    }
                }
                con.Close();
            }
           
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["log"].ToString());
                SqlCommand cmd = new SqlCommand("SELECT Customer_ID,Customer_Username,Customer_Password FROM Customer WHERE Customer_Username='" + TextBox1.Text + "' AND Customer_Password='" + TextBox2.Text + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        Session["Cust_id"] = rdr[0].ToString();
                        Response.Redirect("Home.aspx");

                    }
                }
                else
                {
                    status.Text = "Account Does Not Exists !";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                con.Close();
            }
        }
    }
}