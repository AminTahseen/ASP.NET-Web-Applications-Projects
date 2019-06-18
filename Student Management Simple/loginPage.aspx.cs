using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTechAssignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["login_connection"].ConnectionString);
                OleDbCommand cmd=new OleDbCommand("SELECT std_id,std_pass FROM StudentData WHERE std_id='"+TextBox1.Text+"'AND std_pass='"+TextBox2.Text+"'");
                cmd.Connection = con;
                OleDbDataReader rdr;
                con.Open();
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                    Session["Student_id"] = rdr["std_id"].ToString();
                    Response.Redirect("detailPage.aspx");
                    }
                }
                else {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Wrong ID, Pass";
                Label1.Visible = true;
                }
                con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgetPass.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("test.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}