using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Net;
using System.Text;

public partial class bca_faculty_generate_paper : System.Web.UI.Page
{
    Class1 x = new Class1();
    private static Random random = new Random();
    DataTable dat = new DataTable();
    string qry,ques,opt1,opt2,opt3,opt4,pass;
    GridViewRow row;
    string tab_name;
    TextBox txt;
    int marks;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            x.op();
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
        }
    }
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
       string Book = GridView2.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text + ".pdf";
        WebClient req = new WebClient();
        HttpResponse response = HttpContext.Current.Response;
        response.Clear();
        response.ClearContent();
        response.ClearHeaders();
        response.Buffer = true;
        Response.ContentType = "application/octet-stream";
        response.AddHeader("Content-Disposition", "attachment;filename=" + Book);
        byte[] data = req.DownloadData(Server.MapPath("~/bca_faculty/Papers/" + Book));
        response.BinaryWrite(data);
        response.End();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        int s = sum();
        if (s == Convert.ToInt32(ddl_marks.SelectedValue))
        {
            tab_name = generate_tab_name();
            generate_table(tab_name);
            add_ques(tab_name);
            generate_pdf(tab_name);
            generate_password(tab_name);
            Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
        }
        else
        { 
            btn_submit.Visible = false; 
        }
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        for(int i=0;i< GridView1.Rows.Count;i++)
        {
            row = GridView1.Rows[i];
            txt = row.FindControl("Textbox") as TextBox;
            txt.AutoPostBack = false;
            txt.Text = "0";
        }
    }
    protected void btn_validate_Click(object sender, EventArgs e)
    {
        int s = sum();
        if (s == Convert.ToInt32(ddl_marks.SelectedValue))
            btn_submit.Visible = true;
        else
            btn_submit.Visible = false;
    }
    void generate_password(string tab_name)
    {
        x.op();
        pass = RandomString(8);
        string msg = "You Are Generate:- " + ddl_insert_subject.SelectedItem.Text + " Paper and Exam Password is:-" + pass;
        sendMessage(Session["contact_no"].ToString(),msg);
        qry = "insert into paper_master values('" + tab_name + "','" + pass + "')";
        x.insert(qry);
        x.co();
    }
    void generate_pdf(string tab_name)
    {
        x.op();
        qry = "select * from obj_bca_master where ques_id in (select ques_id from " + tab_name + ")";
        dat = x.sea(qry);
        x.co();
        Document doc = new Document(PageSize.A4, 10, 10, 10, 10);
        MemoryStream mstream = new MemoryStream();
        PdfWriter writter = PdfWriter.GetInstance(doc, new FileStream(Server.MapPath("~/BCA_faculty/papers/" + tab_name + ".pdf"),FileMode.Create));
        if (Session["faculty_id"] != null)
        {
            x.op();
            qry = "insert into pdf_master values('" + Session["faculty_id"] + "','" + tab_name + "','" + ddl_insert_subject.SelectedValue  + "'," + ddl_marks.SelectedValue.ToString() +")";
            x.insert(qry);
            x.co();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        doc.Open();
        for (int i = 0; i < dat.Rows.Count; i++)
        {
            Paragraph p = new Paragraph();
            ques = dat.Rows[i][3].ToString();
            opt1 = dat.Rows[i][5].ToString();
            opt2 = dat.Rows[i][6].ToString();
            opt3 = dat.Rows[i][7].ToString();
            opt4 = dat.Rows[i][8].ToString();
            p.Add("Q" + (i + 1) + ". ");
            p.Add(ques);
            p.Add(new Chunk("\n"));
            p.Add("A. ");
            p.Add(opt1);
            p.Add("         B. ");
            p.Add(opt2);
            p.Add(new Chunk("\n"));
            p.Add("C. ");
            p.Add(opt3);
            p.Add("         D. ");
            p.Add(opt4);
            p.Add(new Chunk("\n\n"));
            doc.Add(p);
        }
        doc.Close();
        byte[] bytes = mstream.ToArray();
        mstream.Close();
        Response.Clear();
        Response.ContentType = "application/pdf";
        Response.AddHeader("Content-Disposition", "attachment; filename=" + tab_name + ".pdf");
        Response.ContentType = "application/pdf";
        Response.Buffer = true;
        Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
        Response.BinaryWrite(bytes);
    }
    void add_ques(string tab_name)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int n_ques;
            row = GridView1.Rows[i];
            txt = row.FindControl("Textbox") as TextBox;
            txt.AutoPostBack = false;
            n_ques = Convert.ToInt32(txt.Text);
            x.op();
            qry = "select TOP " + n_ques + " ques_id from obj_bca_master where subject_id=" + ddl_insert_subject.SelectedValue + " and unit_id=" + (i + 1) + "order by NEWID()";
            dat.Merge(x.sea(qry));
            x.co();
        }
        if (dat.Rows.Count > 0)
        {
            x.op();
            for (int j = 0; j < dat.Rows.Count; j++)
            {
                qry = "insert into " + tab_name + " values(" + dat.Rows[j][0] + ")";
                x.insert(qry);
            }
            x.co();
        }
    }
    void generate_table(string tab_name)
    {
        x.op();
        qry = "create table " + tab_name + " (ques_no int identity (1,1) not null, ques_id int);";
        x.insert(qry);
        x.co();
    }

    public string sendMessage(string phoneNo, string message)
    {
        string url = "http://login.bulksmsgateway.in/sendmessage.php";
        string result = "";
        message = HttpUtility.UrlPathEncode(message);
        String strPost = "?user=" + HttpUtility.UrlPathEncode("questionnaire") + "&password=" + HttpUtility.UrlPathEncode("questionnaire.com") + "&sender=" + HttpUtility.UrlPathEncode("ANSWER") + "&mobile=" + HttpUtility.UrlPathEncode(phoneNo) + "&type=" + HttpUtility.UrlPathEncode("3") + "&message=" + message;
        StreamWriter myWriter = null;
        HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url + strPost);
        objRequest.Method = "POST";
        objRequest.ContentLength = Encoding.UTF8.GetByteCount(strPost);
        objRequest.ContentType = "application/x-www-form-urlencoded";
        try
        {
            myWriter = new StreamWriter(objRequest.GetRequestStream());
            myWriter.Write(strPost);
        }
        catch (Exception e)
        {
            return e.Message;
        }
        finally
        {
            myWriter.Close();
        }
        HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
        using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
        {
            result = sr.ReadToEnd();
            // Close and clean up the StreamReader sr.Close();
        }
        return result;
    }
    string generate_tab_name()
    {
        int year_code = Convert.ToInt32((System.DateTime.Now.Year.ToString()).Substring(2));
        int sub_code = Convert.ToInt32(ddl_insert_subject.SelectedValue.ToString());
        Session["Sub_name"] = ddl_insert_subject.SelectedItem.Text;
       
        
        
        int paper_code;
        x.op();
        qry = "select count(*) from information_schema.tables where table_type = 'base table' and table_name like 'obj_" + sub_code + "%" + year_code + "'";
        x.cmd = new SqlCommand(qry, x.cn);
        paper_code = Convert.ToInt32(x.cmd.ExecuteScalar()) + 1;
        x.co();
        return "obj_" + sub_code + "_" + paper_code + "_" + year_code;
    }
    int sum()
    {
        int s = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            row = GridView1.Rows[i];
            txt = row.FindControl("Textbox") as TextBox;
            txt.AutoPostBack = false;
            s = s + Convert.ToInt32(txt.Text);
        }
        return s;
    }
    public static string RandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
    }
    protected void ddl_marks_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}