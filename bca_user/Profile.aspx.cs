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

public partial class bca_user_Profile : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label7.Text = Session["student_username"].ToString();
        Image1.ImageUrl = "~/Student_Image/" + Session["student_email"].ToString() + ".jpg";
        lbl_enroll.Text = "Enrollment Number :" + Session["student_enroll"].ToString();
        lbl_uname.Text = "Username          : " + Session["student_username"];
        lbl_email.Text = "Email ID          : " + Session["student_email"].ToString();
        lbl_contact.Text = "Contact Number    : " + Session["student_contact"].ToString();
        lbl_dob.Text = "Date Of Birth     : " + Session["student_dob"].ToString();
    }

    protected void btn_change_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from student_master where email='" + Session["student_email"].ToString() + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            if (txt_current.Text == dat.Rows[0][4].ToString())
            {
                if (txt_new.Text == txt_new_confirm.Text)
                {
                    qry = "update student_master set password='" + txt_new.Text + "'where email='" + Session["student_email"].ToString() + "'";
                    x.insert(qry);
                    x.co();
                    Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
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
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["student_id"] == null)
        {
            Response.Redirect("../login.aspx");
        }
    }
}