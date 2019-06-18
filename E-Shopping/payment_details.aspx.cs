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
    public partial class payment_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pay_det"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Customer.Customer_ID, Customer.Customer_Name, card_det.credit_card_number,card_det.Total_bill FROM card_det INNER JOIN Customer ON card_det.Cust_id = Customer.Customer_ID ", con);
            try
            {

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pay_det"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Customer.Customer_ID, Customer.Customer_Name, card_det.credit_card_number,card_det.Total_bill FROM card_det INNER JOIN Customer ON card_det.Cust_id = Customer.Customer_ID WHERE Customer.Customer_Name='" + cname.Text + "'", con);
            try
            {

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            cid.Text = gr.Cells[1].Text;
            ccno.Text = gr.Cells[3].Text;
            cbill.Text = gr.Cells[4].Text;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pay_det"].ToString());
            SqlCommand cmd = new SqlCommand("DELETE FROM card_det WHERE Cust_id=" + Convert.ToInt32(cid.Text) + "", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                refresh();
            }
            catch (Exception er)
            {

            }
        }
        protected void refresh()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pay_det"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Customer.Customer_ID, Customer.Customer_Name, card_det.credit_card_number,card_det.Total_bill FROM card_det INNER JOIN Customer ON card_det.Cust_id = Customer.Customer_ID ", con);
            try
            {

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception er)
            {

            }
            cid.Text = "";
            ccno.Text = "";
            cbill.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pay_det"].ToString());
            SqlCommand cmd = new SqlCommand("UPDATE card_det SET credit_card_number="+Convert.ToInt32(ccno.Text)+" WHERE Cust_id=" + Convert.ToInt32(cid.Text) + "", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                refresh();
            }
            catch (Exception er)
            {

            }
        }
    }
}