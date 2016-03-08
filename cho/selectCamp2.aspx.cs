using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cho_selectCamp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        Session["campaign"] = null;
        string query = "select * from CAMPAIGN where \"NAME\" = \'"+ s +"'";
        SqlDataSource1.SelectCommand = query;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
        foreach (DataRow row in dv.Table.Rows)
        {
            string cid = row["campaign_id"] as string;
            Session["campaign"] = cid;
        }
        Response.Redirect("~/cho/setho.aspx");
       

    }
}