using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class bca_user_Default : System.Web.UI.Page
{
    string qry;
    DataTable dat = new DataTable();
    int year;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            Class1 x = new Class1();
            x.op();
            year = Convert.ToInt32(Convert.ToInt32(System.DateTime.Now.Year).ToString().Substring(2, 2));
            qry = "select * from subject_master where subject_id in (select DISTINCT substring(TABLE_NAME,5,3) from information_schema.tables where table_type='base table' and TABLE_NAME like 'obj_%" + year + "' and TABLE_NAME not in (select paper from result_master where student_id=" + Convert.ToInt32(Session["student_id"].ToString()) + "))";
            dat = x.sea(qry);
            ddll_select_exam.DataSource = dat;
            ddll_select_exam.DataValueField = "subject_id";
            ddll_select_exam.DataTextField = "subject";
            ddll_select_exam.DataBind();
            dat.Clear();
            x.co();
        }
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if(Session["student_id"]==null)
        {
            Response.Redirect("../login.aspx");
        }
    }
    protected void btn_start_exam_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();
        x.co();
        year = Convert.ToInt32(Convert.ToInt32(System.DateTime.Now.Year).ToString().Substring(2, 2));
        x.op();
        dat.Clear();
        qry = "select Top 1 TABLE_NAME from information_schema.tables where table_type='base table' and TABLE_NAME like 'obj_" + ddll_select_exam.SelectedValue + "%" + year + "' order by table_name desc";
        dat = x.sea(qry);
        x.co();
        Session["paper"] = dat.Rows[0][0];
        x.op();
        qry = "select * from result_master where student_id=" + Session["student_id"] + " and paper='" + Session["paper"] + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            Label2.Text = "You have already appeared for this subject's exam, please select another subject.";
        }
        else
        {
            Response.Redirect("password.aspx");
        }
    }

 }