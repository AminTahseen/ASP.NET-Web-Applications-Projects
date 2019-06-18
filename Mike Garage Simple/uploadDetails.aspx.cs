using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
using System.Configuration;

namespace Simple_DashBoard
{
    public partial class uploadDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["car"].ToString());
            FileUpload1.SaveAs(Server.MapPath("~/dataImages/") + Path.GetFileName(FileUpload1.FileName));
            String link = "dataImages/" + Path.GetFileName(FileUpload1.FileName);


            OleDbCommand cmd = new OleDbCommand("INSERT INTO cars VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + link + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Data Saved Successfully !";
            con.Close();
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/dataImages/") + Path.GetFileName(FileUpload1.FileName));
            String link = "dataImages/" + Path.GetFileName(FileUpload1.FileName);
            Image2.ImageUrl = link;
        }
    }
}