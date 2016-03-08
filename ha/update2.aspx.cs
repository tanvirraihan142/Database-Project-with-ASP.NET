using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ha_update2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");
        if (!IsPostBack)
        {
            string rep = Session["recipient"] as string;
            string query = "select (SELECT name from \"USERS\" where id = C.HA_ID) \"VACCINATED BY\",CENTER,TO_DATE(C.\"VACC_DATE\",'DD-MM-YYYY') \"VACC DATE\",C.vaccine from VACC_RECORD C where C.RECIPIENT_ID = '" + rep + "'";
           // Label1.Text = query;
            SqlDataSource1.SelectCommand = query;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            GridView1.DataBind();
        }

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool b = CheckBox1.Checked;
        string rep = Session["recipient"] as string;
        string ha = Session["user"] as string;
        string query = "";
        if (b) 
           query = "insert into vacc_record (recipient_id,vaccine,vacc_date) values('" + rep +"','"+TextBoxVaccine.Text+ "',TO_DATE('" + TextBoxYear.Text + "-" + TextBoxMonth.Text + "-" + TextBoxDate.Text + "','YYYY-MM-DD'))";
        if (!b)
            query = "insert into vacc_record values ('" + rep + "','" + ha + "'" + ",TO_DATE('" + TextBoxYear.Text + "-" + TextBoxMonth.Text + "-" + TextBoxDate.Text + "','YYYY-MM-DD')," + "'" + TextBoxCenter.Text + "','" + TextBoxVaccine.Text + "')";

       // Label1.Text= query;
        SqlDataSource2.InsertCommand = query;
        SqlDataSource2.InsertCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource2.Insert();
        GridView1.DataBind();
           

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ha/Default.aspx");
    }
}