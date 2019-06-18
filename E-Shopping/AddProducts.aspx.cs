using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Eshopping.WebPages.Products
{
    public partial class AddProducts : System.Web.UI.Page
    {
        string img;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null) {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebTechConnectionString"].ToString());
            try
            {
              FileUpload1.SaveAs(Server.MapPath("~/WebPages/dataImages/") + Path.GetFileName(FileUpload1.FileName));
              String link = "dataImages/"+Path.GetFileName(FileUpload1.FileName);
              con.Open();
              SqlCommand cmd = new SqlCommand("INSERT INTO Product VALUES('" +ProductName.Text+ "','"+ProductCath.Text+"','"+ProductDescrip.Text+"',"+Convert.ToDecimal(ProductPrice.Text)+",'"+link+"')", con);
              cmd.ExecuteNonQuery();
              lblmsg.Text = "Product Inserted Successfully !";
              con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text = er.Message.ToString();
            }
            ProductID.Text = "-";
            ProductName.Text = "-";
            ProductCath.Text = "-";
            ProductDescrip.Text = "-";
            ProductPrice.Text = "-";
            TextBox5.Text = "-";
            setincode.ImageUrl = "~/images/prodicon.png";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebTechConnectionString"].ToString());
            try
            {
                
                FileUpload1.SaveAs(Server.MapPath("~/WebPages/dataImages/") + Path.GetFileName(FileUpload1.FileName));
                string link = "dataImages/"+Path.GetFileName(FileUpload1.FileName);
                SqlCommand cmd = new SqlCommand("UPDATE Product SET Item_Name='" + ProductName.Text + "',Item_Cathegory='" + ProductCath.Text + "',Item_Description='" + ProductDescrip.Text + "',Item_Price=" + Convert.ToDecimal(ProductPrice.Text) + ",Item_Image='" + link + "' WHERE Item_ID=" + Convert.ToInt32(ProductID.Text) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblmsg.Text = "Product Updated Successfully !";
                con.Close();

            }
            catch (Exception er)
            {
                lblmsg.Text = er.Message.ToString() ;
            }
            ProductID.Text = "-";
            ProductName.Text = "-";
            ProductCath.Text = "-";
            ProductDescrip.Text = "-";
            ProductPrice.Text = "-";
            TextBox5.Text = "-";
            setincode.ImageUrl = "~/images/prodicon.png";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
               FileUpload1.SaveAs(Server.MapPath("~/WebPages/dataImages/") + Path.GetFileName(FileUpload1.FileName));
                string link = "dataImages/"+Path.GetFileName(FileUpload1.FileName).ToString();
                setincode.ImageUrl = link;
            }
            else {
                lblmsg.Text = "Upload FILE ";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebTechConnectionString"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE Item_ID="+Convert.ToInt32(ProductID.Text)+"", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblmsg.Text = "Product Deleted Successfully !";
                con.Close();
                setincode.ImageUrl = "~/images/prodicon.png";
            }
            catch (Exception er)
            {
                lblmsg.Text = "Error Occured";
            }
            ProductID.Text = "-";
            ProductName.Text = "-";
            ProductCath.Text = "-";
            ProductDescrip.Text = "-";
            ProductPrice.Text = "-";
            TextBox5.Text = "-";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebTechConnectionString"].ToString());
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE Item_Name='" + TextBox5.Text + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        ProductID.Text = rdr[0].ToString();
                        ProductName.Text = rdr[1].ToString();
                        ProductCath.Text = rdr[2].ToString();
                        ProductDescrip.Text = rdr[3].ToString();
                        ProductPrice.Text = rdr[4].ToString();
                        string imga = "~/WebPages/" + rdr[5].ToString();
                        img = imga;
                        setincode.ImageUrl = imga;
                        lblmsg.Text = setincode.ImageUrl;

                    }
                }
                else
                {
                lblmsg.Text="No Such Product "+TextBox5.Text+" Exists !";
                ProductID.Text = "-";
                ProductName.Text = "-";
                ProductCath.Text = "-";
                ProductDescrip.Text = "-";
                ProductPrice.Text = "-";
                TextBox5.Text = "-";
                    setincode.ImageUrl = "~/images/prodicon.png";
                }
                con.Close();
            }
            catch (Exception er)
            {
                lblmsg.Text = "Error Occured";
            }
        }
    }
}