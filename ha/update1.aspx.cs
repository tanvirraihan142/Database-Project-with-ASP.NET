using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ha_update1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text;
        string q = "select * from recipient where id = '"+a+"'";
        SqlDataSource1.SelectCommand = q;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
        int result = dv.Count;
        if (result == 0)
            Label1.Text = "*Recipient does not exist";
        if (result > 0) {
            Session["recipient"] = TextBox1.Text;
            Label1.Text = "*Recipient exists";
            Response.Redirect("~/ha/update2.aspx");
        }

    }
}