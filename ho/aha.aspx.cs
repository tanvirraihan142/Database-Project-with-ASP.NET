using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ho_aha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
        if (!IsPostBack)
        {
            string user = Session["user"] as string;
            string q = "select getcentername(CENTER_ID) Center,getcampaignname(CAMPAIGN_ID) Campaign from CENTER_CAMPAIGN where HO_ID = '" + user + "'";
            SqlDataSource1.SelectCommand = q;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        string b = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Center c = new Center(a,b);
        Session["data"] = c;
        Response.Redirect("~/ho/aha2.aspx");

    }
}