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
    public partial class HomePag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["forget_det"].ConnectionString);

            
           
                try
                {
                    string sql = "UPDATE StudentData SET std_pass='" + TextBox4.Text + "' WHERE std_id='" + TextBox1.Text + "'";

                    con.Open();
                    OleDbDataAdapter da = new OleDbDataAdapter();
                    da.UpdateCommand = new OleDbCommand(sql, con);
                    da.UpdateCommand.ExecuteNonQuery();
                    Label1.Text = "Password Changed Successfully !";
                    Label1.Visible = true;
                    con.Close();
                }


                catch (Exception er)
                {
                    Response.Write(er.ToString());
                }
                TextBox1.Text = "";

          
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
          
        }
    }
}