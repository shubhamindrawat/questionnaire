using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Admin_Subject : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry;
    int subject_id;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        foreach (Control x in form1.Controls)
        {
            if (x is TextBox)
            {
                ((TextBox)x).Text = "";
            }
        }
    }
   
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from subject_master where sem=" + ddl_insert_sem.SelectedValue + "";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            subject_id = dat.Rows.Count + 1 + (Convert.ToInt32(ddl_insert_sem.SelectedValue)*100);
            x.co();
        }
        else
        {
            x.co();
        }
        x.op();
        qry = "insert into subject_master values(" + subject_id + ",1," + Convert.ToInt32(ddl_insert_sem.SelectedValue) + ",'" + txt_subject.Text + "')";
        x.insert(qry);
        x.co();
        Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
    }
}