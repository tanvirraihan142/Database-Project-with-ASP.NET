using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cho_setcenter : System.Web.UI.Page
{
      
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
        if (!IsPostBack){
            List<Center> centerList = null;
            centerList = Session["cList"] as List<Center>;
            GridView2.DataSource = centerList;
            GridView2.DataBind();
            string cmp = Session["campaign"] as string;
            //ErrorLabel.Text = cmp;
            string s = "SELECT	B.Name from CENTER_CAMPAIGN A, CENTER B where A.CENTER_ID = B.CENTER_ID and A.CAMPAIGN_ID = '"+cmp+"'";

            SqlDataSource4.SelectCommand = s;
            SqlDataSource4.SelectCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource4.Select(DataSourceSelectArguments.Empty) ;

            s = "select name,address from center minus " + "SELECT	B.name,B.address from CENTER_CAMPAIGN A, CENTER B where A.CENTER_ID = B.CENTER_ID and A.CAMPAIGN_ID = '" + cmp + "'"; ;
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        }
        
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        List<Center> centerList = null;
        centerList = Session["cList"] as List<Center>;
        
        if (centerList == null)
        {
            centerList = new List<Center>();
            Session["cList"] = centerList;
        }
        

        string centername = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        string centerlocation = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Center center1 = new Center(centername, centerlocation);

        bool exists = centerList.Exists(element => (element.Location == center1.Location) && (element.Name == center1.Name));
        if (!exists)
        centerList.Add(center1);
        Session["cList"] = centerList;
        GridView2.DataSource = centerList;
        GridView2.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ButtonClear_Click(object sender, EventArgs e)
    {
        List<Center> centerList = Session["cList"] as List<Center>;
        centerList = null;
        Session["cList"] = centerList;
        GridView2.DataSource = centerList;
        GridView2.DataBind();
    }
    protected void ButtonConfirm_Click(object sender, EventArgs e)
    {
        List<Center> centerList = Session["cList"] as List<Center>;
        string center_id="";
        string s = "";
        foreach (Center center1 in centerList)
        {
            string query2 = "select * from center_campaign";
            string t;
            string id2 = "";
            SqlDataSource5.SelectCommand = query2;
            SqlDataSource5.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            int result = dv.Count + 1;
            t = Convert.ToString(result);
            if (t.Length == 1)
            {
                id2 += "000";
                id2 += t;
            }
            else if (t.Length == 2)
            {
                id2 += "00";
                id2 += t;
            }
            else if (t.Length == 3)
            {
                id2 += "0";
                id2 += t;
            }
            else if (t.Length == 4)
            {

                id2 += t;
            }
            
            string query = "select * from center where name = '" + center1.Name + "'";
            SqlDataSource3.SelectCommand = query;
            SqlDataSource3.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv2 = SqlDataSource3.Select(DataSourceSelectArguments.Empty) as DataView;
            string campaign_id = Session["campaign"] as string;
            foreach (DataRow row2 in dv2.Table.Rows)
            {
                center_id = row2["center_id"] as string;
            }

            query = "insert into center_campaign (center_id,campaign_id,id) values ('" + center_id + "','" + campaign_id + "',generateid('"+center_id + "','" + campaign_id+"'))";
            //ErrorLabel.Text = query;
            
            SqlDataSource2.InsertCommand = query;
            SqlDataSource2.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource2.Insert();
             
            
        }
        Session["cList"] = null;
        //Response.Redirect("~/cho/Default.aspx");
               
    }
}