using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bca_admin_changepassword : System.Web.UI.Page
{
    string pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        pass = File.ReadLines(Server.MapPath("~/bca_admin/TextFile.txt")).ElementAtOrDefault(1);
        Image1.ImageUrl = "../production/images/1.jpg";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_current.Text == pass)
        {
            if (txt_current_new.Text == txt_current_new_confirm.Text)
            {
                String strFile = File.ReadAllText(Server.MapPath("~/bca_admin/TextFile.txt"));
                strFile = strFile.Replace(txt_current.Text, txt_current_new.Text);
                File.WriteAllText(Server.MapPath("~/bca_admin/TextFile.txt"), strFile);
            }
            else
            {
                lbl_error.Text = "Password Not Match";
            }
        }
        else
        {
            lbl_error.Text = "Current Password Wrong";
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}