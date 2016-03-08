using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = null;
        if (!IsPostBack)
        {
            SetImageURL();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageURL();
    }

    private void SetImageURL()
    {
        if (ViewState["ImageDisplayed"] == null)
        {
            Image1.ImageUrl = "~/Images/11.jpg";
            ViewState["ImageDisplayed"] = 1;
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            if (i == 4)
            {
                Image1.ImageUrl = "~/Images/11.jpg";
                ViewState["ImageDisplayed"] = 1;
            }
            else
            {
                i++;
                Image1.ImageUrl = "~/Images/" + (i + 10).ToString() + ".jpg";
                ViewState["ImageDisplayed"] = i;
            }
        }
    }
}
