using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string userid = TextBox1.Text;
        string userpassword = TextBox2.Text;
        int check = 0;
        if ((userid == null || userid == "") || (userpassword == null || userpassword == ""))
            check = 1;
        else check = 2;
    
        if (check == 2)
        {
            string selectquery = "select * from USERS where id = " + "'" + userid + "'" + " and password = " + "'" + userpassword + "'";
            //ErrorLabel.Text = selectquery;
            SqlDataSource1.SelectCommand = selectquery;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            int result = dv.Count;
            if (result == 0)
            {
                ErrorLabel.Text = "Username or password is wrong.";
            }
            else
            {
                Session["user"] = userid;
                foreach (DataRow row in dv.Table.Rows)
                {
                    string desig = row["designation"] as string;
                    if (desig == "Health Asst.")
                        Response.Redirect("~/ha/Default.aspx");
                    else if (desig == "Health Officer")
                        Response.Redirect("~/ho/Default.aspx");
                    else if (desig == "Chief Health Officer")
                        Response.Redirect("~/cho/Default.aspx");
                            
                    
                    
                }
                //Response.Redirect("~/HomePage.aspx");

            }
        }
        else if (check == 0)
        {
            ErrorLabel.Text = "Username or password is Empty.";
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}