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
        string query = "select name,fathers_name,mothers_name,gender,to_char(date_of_birth,'DD-MM-YYYY') \"Date of Birth\",mobile_no,address from recipient where id = '" + id + "'";
        SqlDataSource1.SelectCommand = query;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DetailsView1.DataBind();

       
        query = "select (SELECT name from \"USERS\" where id = C.HA_ID) \"VACCINATED BY\",CENTER,TO_DATE(C.\"VACC_DATE\",'DD-MM-YYYY') \"VACC DATE\",C.vaccine from VACC_RECORD C where C.RECIPIENT_ID = '" + id + "'";
        // Label1.Text = query;
        SqlDataSource2.SelectCommand = query;
        SqlDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}