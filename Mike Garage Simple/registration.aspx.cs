using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Simple_DashBoard
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["c_id"] == null)
            {
                Response.Redirect("cardet.aspx");
            }
            TextBox7.Text = Session["c_id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["pers"].ToString());
            
            OleDbCommand cmd = new OleDbCommand("INSERT INTO person VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Person ID " + TextBox1.Text + " Is";
            con.Close();
            OleDbConnection con1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["reg"].ToString());

            OleDbCommand cmd1 = new OleDbCommand("INSERT INTO register VALUES('" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con1);
            con1.Open();
            cmd1.ExecuteNonQuery();
            Label2.Text = "Successfully Registered For Car ID " + TextBox7.Text;
            con1.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            Session["c_id"] = null;
            Response.Redirect("cardet.aspx");
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            TextBox8.Text = TextBox1.Text;
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["c_id"] = null;
            Response.Redirect("cardet.aspx");
        }
    }
}