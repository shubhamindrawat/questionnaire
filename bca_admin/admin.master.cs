using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        img_admin.ImageUrl = "../production/images/1.jpg";
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["admin_email"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
    }
}
