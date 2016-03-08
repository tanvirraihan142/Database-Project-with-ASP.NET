using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cho_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
        
        
        string cmp = Session["campaign"] as string;

        string s = "select B.\"NAME\" ,B.ADDRESS , (select name from users C where C.id = A.HO_ID) \"Health Officer\" from CENTER_CAMPAIGN A, CENTER B where A.CENTER_ID = B.CENTER_ID  and A.CAMPAIGN_ID = '" + cmp + "'";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
        int result = dv.Count;
        if (result == 0) {
            Label1.Text = "No Centers Selected";
            
        }

    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = GridView3.Rows[GridView3.SelectedIndex].Cells[1].Text;
        string b = "select center_id from center where name = '" + a + "'";
        string c = "";
        SqlDataSource2.SelectCommand = b;
        SqlDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource2.Select(DataSourceSelectArguments.Empty) as DataView;
        foreach (DataRow row in dv.Table.Rows) {
            c = row["center_id"] as string;
        }
        Session["center"] = c;
        Label1.Text = c;
        Response.Redirect("~/cho/setho2.aspx");
    }
}