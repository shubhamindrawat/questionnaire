using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class bca_user_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        File.Delete(Session["fname"].ToString());
        File.Delete(Session["t_fname"].ToString());
        Session["paper"] = null;
        Session["ques_no"] = null;
        Session["max_ques_no"] = null;
        Session["fname"] = null;
        Session["t_fname"] = null;
        Response.Redirect("~/bca_user/Default.aspx");
    }
}