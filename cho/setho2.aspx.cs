using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class cho_setho2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
        
        
        string campaign = Session["campaign"] as string;
        string center = Session["center"] as string;
        string query = "select * from center where center_id = '" + center + "'";
        SqlDataSource2.SelectCommand = query;
        SqlDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource2.Select(DataSourceSelectArguments.Empty) as DataView;
        string center_name="";
        foreach (DataRow row in dv.Table.Rows)
        {
            center_name = row["name"] as string;
        }
        Label1.Text = center_name;
        query = "select  B.\"NAME\" , B.ADDRESS from CENTER_CAMPAIGN A, \"USERS\" B where A.HO_ID = B.ID and A.campaign_id = '" + campaign + "'";
        query = "select name,address from users where designation = \'Health Officer\' minus " + query ;
        //Label2.Text = query;
        SqlDataSource1.SelectCommand = query;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();
         
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        string q = "select * from users where name = '" + a + "'";
        SqlDataSource3.SelectCommand = q;
        string id = "";
        SqlDataSource3.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource3.Select(DataSourceSelectArguments.Empty) as DataView;
        foreach (DataRow row in dv.Table.Rows)
        {
            id = row["id"] as string;
        }
        Label2.Text = "Selected Health Officer : "+a;
        Session["HO"] = id;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int chek = 0;
        if (Session["HO"] == null) chek = 1;

        if (chek == 1)
        {
            Label2.Text = "*Select a health officer";
        }
        
        if (chek == 0) {
            string ho_id = Session["HO"] as string;
            string campaign = Session["campaign"] as string;
            string center = Session["center"] as string;
            string query = "update center_campaign set ho_id = '"+ho_id+"' where campaign_id = '"+campaign+"' and center_id = '"+center+"'";
            SqlDataSource4.UpdateCommand= query;
            SqlDataSource4.UpdateCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource4.Update();

        }
        

    }
}