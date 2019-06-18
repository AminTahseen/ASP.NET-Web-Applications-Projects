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
    public partial class detailPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student_id"] == null)
            {
                Response.Redirect("loginPage.aspx");
            }

            if (!IsPostBack)
            {
                OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["det_connection"].ConnectionString);
                OleDbCommand cmd = new OleDbCommand("SELECT std_id,std_name,std_father_name,std_age,std_pno,std_studyp FROM StudentData WHERE std_id='" + Session["Student_id"].ToString() + "'");
                cmd.Connection = con;
                OleDbDataReader rdr;
                con.Open();
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        TextBox1.Text = rdr["std_id"].ToString();
                        TextBox2.Text = rdr["std_name"].ToString();
                        TextBox3.Text = rdr["std_father_name"].ToString();
                        TextBox4.Text = rdr["std_age"].ToString();
                        TextBox5.Text = rdr["std_pno"].ToString();
                        TextBox6.Text = rdr["std_studyp"].ToString();

                    }
                }
                else
                {
                }
                con.Close();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["det_con"].ConnectionString);
            try
            {
                string sql = "UPDATE StudentData SET std_name='" + TextBox2.Text + "',std_father_name='" + TextBox3.Text + "',std_age=" + TextBox4.Text + ",std_pno='" + TextBox5.Text + "',std_studyp='" + TextBox6.Text + "' WHERE std_id='" + TextBox1.Text + "'";
                con.Open();
                OleDbDataAdapter da = new OleDbDataAdapter();
                da.UpdateCommand = new OleDbCommand(sql, con);
                da.UpdateCommand.ExecuteNonQuery();
                con.Close();
            }


            catch (Exception er)
            {
                Response.Write(er.ToString());
            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["det_con"].ConnectionString);

            try
            {

                string sql ="DELETE FROM StudentData WHERE std_id='" + TextBox1.Text + "'";

                con.Open();
                OleDbDataAdapter da = new OleDbDataAdapter();
                da.UpdateCommand = new OleDbCommand(sql, con);
                da.UpdateCommand.ExecuteNonQuery();
                Response.Redirect("loginPage.aspx");
                con.Close();
            }


            catch (Exception er)
            {
                Response.Write(er.ToString());
            }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Student_id"] = null;
            Response.Redirect("LoginPage.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button4_Click2(object sender, EventArgs e)
        {
            
                OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["det_connection"].ConnectionString);
                OleDbCommand cmd = new OleDbCommand("SELECT std_id,std_name,std_father_name,std_age,std_pno,std_studyp FROM StudentData WHERE std_id='" + Session["Student_id"].ToString() + "'");
                cmd.Connection = con;
                OleDbDataReader rdr;
                con.Open();
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        TextBox1.Text = rdr["std_id"].ToString();
                        TextBox2.Text = rdr["std_name"].ToString();
                        TextBox3.Text = rdr["std_father_name"].ToString();
                        TextBox4.Text = rdr["std_age"].ToString();
                        TextBox5.Text = rdr["std_pno"].ToString();
                        TextBox6.Text = rdr["std_studyp"].ToString();

                    }
                con.Close();
            }
        }
    }
}