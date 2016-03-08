using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cho_createCampaign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["campaign"] = null;
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int check = 0;
        string campaign_id="CEN";
        if (
        (TextBoxCampaign.Text == null || TextBoxCampaign.Text == "") ||
        (TextBoxVaccine.Text == null || TextBoxVaccine.Text == "") ||
        (TextBoxAge2.Text == null || TextBoxAge2.Text == "") )
            check = 1;
        if (check != 1) 
        {
            string qu = "select * from center where name = '"+TextBoxCampaign + "'";
            SqlDataSource1.SelectCommand = qu;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            int result = dv.Count;
            if (result > 0) {
                check = 2;
            }
        }
        if (check == 1)
        {
            ErrorLabel.Text = "*Please fill up all the boxes";
        }
        if (check == 2)
        {
            ErrorLabel.Text = "*Center already exists";
        }
        if (check == 0) {
            string query = "select * from center";
            string t;
            SqlDataSource1.SelectCommand = query;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            int result = dv.Count+1;
            t = Convert.ToString(result);
            
            if (t.Length == 1)
            {
                campaign_id += "00";
                campaign_id += t;
            }
            else if (t.Length == 2)
            {
                campaign_id += "0";
                campaign_id += t;
            }
             else if (t.Length == 3)
            {
                 campaign_id += t;
             }
          
            //ErrorLabel.Text = campaign_id;
            //ErrorLabel.Text = query;
            
            string query2 = "insert into CENTER values('"+campaign_id+"','"+TextBoxCampaign.Text+"','"+TextBoxVaccine.Text+"','"+TextBoxAge2.Text+"')";
           
           //ErrorLabel.Text = query2;
            SqlDataSource1.InsertCommand = query2;
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.Insert();
            Response.Redirect("~/ho/Default.aspx");

        }

    }
}