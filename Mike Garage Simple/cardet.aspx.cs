using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

namespace Simple_DashBoard
{
    public partial class cardet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["cars"].ToString());
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM cars", con);
                con.Open();
                DataTable dt = new DataTable();
                OleDbDataReader rdr = cmd.ExecuteReader();
                dt.Load(rdr);
                con.Close();
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["cars"].ToString());
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM cars WHERE c_id='" + TextBox1.Text + "'", con);
            con.Open();
            DataTable dt = new DataTable();
            OleDbDataReader rdr = cmd.ExecuteReader();
            dt.Load(rdr);
            con.Close();
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewDetails") {
                Response.Redirect("viewDetails.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}