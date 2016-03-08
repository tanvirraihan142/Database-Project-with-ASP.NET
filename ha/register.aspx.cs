using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Default.aspx");

        if (!IsPostBack)
        {
            DropDownList2.Items.Add("Male");
            DropDownList2.Items.Add("Female");
         
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int check = 0;
        if ( 
        (TextBoxID.Text == null || TextBoxID.Text == "") || 
        (TextBoxPassword.Text == null || TextBoxPassword.Text == "") ||
        (TextBoxPassword2.Text == null || TextBoxPassword2.Text == "") || 
        (TextBoxName.Text == null || TextBoxName.Text == "") ||
        (TextBoxFather.Text == null || TextBoxFather.Text == "") ||
        (TextBoxMother.Text == null || TextBoxMother.Text == "") ||
        (TextBoxDate.Text == null || TextBoxDate.Text == "") ||
        (TextBoxMonth.Text == null || TextBoxMonth.Text == "") ||
        (TextBoxYear.Text == null || TextBoxYear.Text == "") ||
        (TextBoxMobile.Text == null || TextBoxMobile.Text == "") ||
        (TextBoxAddress.Text == null ||TextBoxAddress.Text == "") )
                check = 1;
        if (check != 1 && TextBoxPassword.Text != TextBoxPassword2.Text)
            check = 2;
        if (check != 1 && check != 2) {
            string q2 = "SELECT * FROM RECIPIENT WHERE ID = '" + TextBoxID.Text + "'";
            SqlDataSource2.SelectCommand = q2;
            SqlDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource2.Select(DataSourceSelectArguments.Empty) as DataView;
            int result = dv.Count;
            if (result != 0) {
                check = 3;
            }

        }
        
        if (check == 1)
            LabelError.Text = "***Incomplete*** ";
        else if (check == 2)
            LabelError.Text = "***Password doesn't match***";
        else if (check == 3)
            LabelError.Text = "ID is already being used";
        else if (check == 0) {
            string query = "insert into RECIPIENT values ('" + TextBoxID.Text + "','" + TextBoxPassword.Text + "','" + TextBoxName.Text + "','" + TextBoxFather.Text + "','" + TextBoxMother.Text + "','" + DropDownList2.SelectedValue + "',";
            query = query + "TO_DATE('"+TextBoxYear.Text + "-" + TextBoxMonth.Text + "-" + TextBoxDate.Text + "','YYYY-MM-DD'),";
            query = query +"'"+TextBoxMobile.Text + "','" + TextBoxAddress.Text + "')";
            LabelError.Text = query;
            SqlDataSource1.InsertCommand = query;
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.Insert();
           // Response.Redirect("~/Default.aspx");
        }

    }

    
}