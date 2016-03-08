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
            Center c1 = Session["data"] as Center;

            List<Center> haList = null;
            haList = Session["haList"] as List<Center>;
            GridView2.DataSource = haList;
            GridView2.DataBind();
            
            
            string ID = "";
            string q = "";
            string q2 = "select GETCCID('"+ c1.Name +"', '"+ c1.Location +"') \"ID\" from dual";
            
            
            SqlDataSource2.SelectCommand = q2;
            SqlDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource2.Select(DataSourceSelectArguments.Empty) as DataView;
            foreach (DataRow row in dv.Table.Rows)
            {
                ID = row["ID"] as string;
            }
            
            ErrorLabel.Text =  ID;

            q = "select A.name,A.address from users A , HA_CENTER_CAMPAIGN B where B.HA_ID = A.\"ID\" and B.CC_ID = '" + ErrorLabel.Text + "'";
            Label1.Text = q;
            SqlDataSource5.SelectCommand = q;
            SqlDataSource5.SelectCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource5.Select(DataSourceSelectArguments.Empty);
            GridView3.DataBind();

            q = "select name,address from users where designation = 'Health Asst.' minus "+q;
            SqlDataSource1.SelectCommand = q;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            GridView1.DataBind();

        }
        
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string haname = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        string halocation = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Center ha1 = new Center(haname, halocation);
        List<Center> haList = null;
        haList = Session["haList"] as List<Center>;

        if (haList == null)
        {
            haList = new List<Center>();
            Session["haList"] = haList;
        }

        bool exists = haList.Exists(element => (element.Location == ha1.Location) && (element.Name == ha1.Name));
        if (!exists)
            haList.Add(ha1);

        Session["haList"] = haList;
        GridView2.DataSource = haList;
        GridView2.DataBind();




    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ButtonClear_Click(object sender, EventArgs e)
    {
        List<Center> centerList = Session["haList"] as List<Center>;
        centerList = null;
        Session["haList"] = centerList;
        GridView2.DataSource = centerList;
        GridView2.DataBind();
    }
    protected void ButtonConfirm_Click(object sender, EventArgs e)
    {
        List<Center> haList = null;
        haList = Session["haList"] as List<Center>;
        Label1.Text = "";
        foreach (Center ha1 in haList)
        {
            string t = "select id from users where name = '"+ha1.Name+"'";
            string ID = "";
            SqlDataSource4.SelectCommand = t;
            SqlDataSource4.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource4.Select(DataSourceSelectArguments.Empty) as DataView;
            foreach (DataRow row in dv.Table.Rows)
            {
                ID = row["id"] as string;
            }
            Label1.Text += ID + " ";
            
            string query = "insert into ha_center_campaign values ('" + ID + "','" + ErrorLabel.Text + "')";
            SqlDataSource3.InsertCommand = query;
            SqlDataSource3.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource3.Insert();
            
        }
        Session["haList"] = null;
        Response.Redirect("~/ho/Default.aspx");
               
    }
}