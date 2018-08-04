using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Text;
public partial class Admin_Faculty : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry,message;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from faculty_subjects_master where faculty_id=" + ddl_insert_faculty.SelectedValue + " and subject_id=" + ddl_insert_subject.SelectedValue;
        dat = x.sea(qry);
        if (dat.Rows.Count == 0)
        {
            x.co();
            x.op();
            qry = "insert into faculty_subjects_master values(" + Convert.ToInt32(ddl_insert_faculty.SelectedValue) + "," + Convert.ToInt32(ddl_insert_subject.SelectedValue) + ")";
            x.insert(qry);
            x.co();
            x.op();
            qry="select * from faculty_master where faculty_id=" + ddl_insert_faculty.SelectedValue;
            dat=x.sea(qry);
            if(dat.Rows.Count > 0)
            {
                ulong pno= Convert.ToUInt64(dat.Rows[0]["contact_no"]);
                string name = dat.Rows[0]["faculty_username"].ToString();
                string gen;
                if((dat.Rows[0]["gender"].ToString())[0] == 'M')
                {
                    gen = "Mr.";
                }
                else
                {
                    gen = "Mrs.";
                }
                x.co();
                
                x.op();
                qry="select * from faculty_subjects_master where faculty_id=" + ddl_insert_faculty.SelectedValue;
                dat = x.sea(qry);
                if(dat.Rows.Count == 1)
                {
                    message = gen + " " + name + "Welcome to the BMBCA staff family.Congratulations, you have been allocated a new subject.\n\nThe newly allocated subject is as follows :-\n\n\n" + ddl_insert_subject.SelectedItem.Text; 
                }
                else 
                {
                    message = "Congratulations " + gen + " " + name + ", looking to your hard work and dedication towards your work, you have been allocated a new subject.\n\nThe newly allocated subject is as follows :-\n\n\n " + ddl_insert_subject.SelectedItem.Text;
                }
                x.co();
                sendMessage(pno.ToString(), message);
                Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
            }
        }
        else
        {
            x.co();
            lbl_error.Text = ddl_insert_faculty.SelectedItem.Text.ToString() + " already takes " + ddl_insert_subject.SelectedItem.Text.ToString();
        }
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
    
}
