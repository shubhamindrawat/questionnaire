using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class bca_user_password : System.Web.UI.Page
{
    Class1 x = new Class1();
    string qry;
    DataTable dat = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["student_id"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        if(Session["paper"]==null)
        {
            Response.Redirect("select_subject.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from paper_master where paper='" + Session["paper"].ToString() + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            if (txt_pass.Text == dat.Rows[0]["password"].ToString())
            {
                Label2.Text = "";
                Response.AddHeader("Refresh", "5;URL=rules.aspx");
                Label2.Text = "You would now be redirected to the Rules & Regulations page within 5 seconds...";
            }
            else
            {
                Label2.Text = "";
                txt_pass.Text = "";
                Label2.Text = "Incorrect password";
            }
        }
        x.co();
    }
}