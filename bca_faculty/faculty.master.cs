using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["faculty_id"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            lbl_menu_user.Text = Session["faculty_username"].ToString();
            lbl_user.Text = Session["faculty_username"].ToString();
            img_profile.ImageUrl = "~/Faculty_Image/" + (Session["faculty_email"].ToString()).Substring(0, (Session["faculty_email"].ToString()).IndexOf("@")) + ".jpg";
            profile_picture.ImageUrl = "~/Faculty_Image/" + (Session["faculty_email"].ToString()).Substring(0, (Session["faculty_email"].ToString()).IndexOf("@")) + ".jpg";
        }
    }
}
