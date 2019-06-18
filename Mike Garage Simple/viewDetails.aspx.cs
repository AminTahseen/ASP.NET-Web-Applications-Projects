using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_DashBoard
{
    public partial class viewDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cardet.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (DataListItem dli in DataList1.Items)
            {
                Label Label2 = (Label)dli.FindControl("Label1");
                Session["c_id"] = Label2.Text;
                Response.Redirect("registration.aspx");
            }
          
        }

        protected void Label1_Load(object sender, EventArgs e)
        {
            
        }
    }
}