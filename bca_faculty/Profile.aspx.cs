using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class bca_faculty_Profile : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty_email"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        profile_picture.ImageUrl = "~/Faculty_Image/" + (Session["faculty_email"].ToString()).Substring(0, (Session["faculty_email"].ToString()).IndexOf("@")) + ".jpg";
        lbl_menu_user.Text = Session["faculty_username"].ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from faculty_master where email='" + Session["faculty_email"].ToString() + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            if (txt_current.Text == dat.Rows[0]["password"].ToString())
            {
                if (txt_current_new.Text == txt_current_new_confirm.Text)
                {
                    qry = "update faculty_master set password='" + txt_current_new.Text + "'where email='" + Session["faculty_email"].ToString() + "'";
                    x.insert(qry);
                    x.co();
                    lbl_error.Text = "Password Change Succesfully..";
                }
                else
                {
                    lbl_error.Text = "New Password And Confirm Password Must Be Same";
                }
            }
            else
            {
                lbl_error.Text = "Current Password Wrong";
            }
        }
        else
        {
            lbl_error.Text = "No User Found";
        }
        x.co();

    }
}