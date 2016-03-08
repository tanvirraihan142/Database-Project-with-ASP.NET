using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ho_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");

        string id = Session["user"] as string;
        string q = "SELECT * FROM USERS WHERE ID = '" + id + "'";
        string namer;
        SqlDataSource1.SelectCommand = q;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
        foreach (DataRow row in dv.Table.Rows)
        {
            namer = row["name"] as string;
            Label1.Text = namer;
        }
    }
}