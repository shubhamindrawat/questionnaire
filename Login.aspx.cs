using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.IO;
public partial class bca_user_Login : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry;
    string email, pass;

    protected void Page_Load(object sender, EventArgs e)
    {
        email = File.ReadLines(Server.MapPath("~/bca_admin/TextFile.txt")).First();
        pass = File.ReadLines(Server.MapPath("~/bca_admin/TextFile.txt")).ElementAtOrDefault(1);
     
  
    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from student_master where email='" + txt_user.Text + "' and password='" + txt_pass.Text + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            Session["student_id"] = dat.Rows[0]["student_id"];
            Session["student_enroll"] = dat.Rows[0]["student_enroll"];
            Session["student_username"] = dat.Rows[0]["student_username"].ToString();
            Session["student_email"] = dat.Rows[0]["email"].ToString();
            Session["student_dob"]=dat.Rows[0]["dob"];
            Session["student_contact"]=dat.Rows[0]["contact_no"];
            Session["student_password"] = dat.Rows[0]["password"].ToString();
            x.co();
            Response.Redirect("~/bca_user/Default.aspx");
        }
        else
        {
            x.co();
        }

        x.op();
        qry = "select * from faculty_master where email='" + txt_user.Text + "' and password='" + txt_pass.Text + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            Session["faculty_id"] = dat.Rows[0]["faculty_id"].ToString();
            Session["faculty_username"] = dat.Rows[0]["faculty_username"].ToString();
            Session["faculty_email"] = dat.Rows[0]["email"].ToString();
            Session["faculty_password"] = dat.Rows[0]["password"].ToString();
            Session["contact_no"] = dat.Rows[0]["contact_no"].ToString();
            x.co();
            Response.Redirect("~/bca_faculty/Default.aspx");
        }
        else
        {
            x.co();
        }
        if (txt_user.Text == email && txt_pass.Text == pass)
        {
            Session["admin_email"] = email;
            Response.Redirect("~/bca_admin/Default.aspx");
        }
        else
        {
            lbl_error.Text = "Password Wrong";
        }
    }
}