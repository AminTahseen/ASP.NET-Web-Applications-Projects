using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshopping.WebPages
{
    public partial class buyProducts : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());
                try
                {
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Product", con);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                    con.Close();
                }
                catch (Exception er)
                {
                    lblmsg.Text = er.Message.ToString();
                }
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE Item_Name='" + TextBox1.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                 DataSet ds = new DataSet();
                    sda.Fill(ds);
                   DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text =er.Message.ToString();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());

            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewDetails")
            {
                Session["ITEM_ID"] = e.CommandArgument.ToString();
                Response.Redirect("viewProdDetails.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE Item_Cathegory='foot wear'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text = er.Message.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE Item_Cathegory='Electric appliances'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text = er.Message.ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE Item_Cathegory='body wear'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text = er.Message.ToString();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["buyProducts"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE Item_Cathegory='decoration'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text = er.Message.ToString();
            }
        }
    }
}