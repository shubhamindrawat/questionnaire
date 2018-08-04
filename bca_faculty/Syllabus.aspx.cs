using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Syllabus : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry;
    int unit_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            x.op();
            if (Session["faculty_id"] != null)
            {
                if (!String.IsNullOrEmpty(Session["faculty_id"].ToString()))
                {
                    qry = "select * from subject_master where subject_id in (select subject_id from faculty_subjects_master where faculty_id=" + Convert.ToInt32(Session["faculty_id"].ToString()) + ")";
                    dat = x.sea(qry);
                    if (dat.Rows.Count > 0)
                    {
                        ddl_insert_subject.DataSource = dat;
                        ddl_insert_subject.DataTextField = "subject";
                        ddl_insert_subject.DataValueField = "subject_id";
                        ddl_insert_subject.DataBind();
                    }
                    x.co();
                    x.op();
                    qry = "select * from subject_master where subject_id in (select subject_id from faculty_subjects_master where faculty_id=" + Convert.ToInt32(Session["faculty_id"].ToString()) + ")";
                    dat = x.sea(qry);
                    if (dat.Rows.Count > 0)
                    {
                        ddl_display_subject.DataSource = dat;
                        ddl_display_subject.DataTextField = "subject";
                        ddl_display_subject.DataValueField = "subject_id";
                        ddl_display_subject.DataBind();
                    }
                }
                x.co();
            }

        }
    }
    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        foreach (Control x in form1.Controls)
        {
            if (x is TextBox)
            {
                ((TextBox)x).Text = "";
            }
        }
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from unit_master where subject_id=" + ddl_insert_subject.SelectedValue + "";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            unit_id = dat.Rows.Count + 1;
            x.co();
            x.op();
            qry = "insert into unit_master values(" + unit_id + "," + Convert.ToInt32(ddl_insert_subject.SelectedValue) + ",'" + txt_unit.Text + "')";
            x.insert(qry);
            x.co();
            Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
        }
        else
        {
            x.co();
        }
    }
}