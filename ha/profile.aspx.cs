using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ha_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
        string id = Session["user"] as string;
        string query = "select name,gender,to_char(date_of_birth,'DD-MM-YYYY') \"Date of Birth\",designation,mobile_no,email,address from users where id = '" + id + "'";
        SqlDataSource1.SelectCommand = query;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DetailsView1.DataBind();

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}