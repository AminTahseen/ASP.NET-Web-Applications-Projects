using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace WebTechAssignment
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
            try
            {
                OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["reg_connection"].ConnectionString);
                OleDbCommand cmd = new OleDbCommand("INSERT INTO StudentData VALUES('"+TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')");
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();   
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                Response.Write("<script>alert('Successfully Registered !');</script>");

            }

            catch (Exception er) {
              
            }
        }
        
        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
         
            Response.Redirect("loginPage.aspx");
            
        }

        protected void TextBox7_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}