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
using System.Net;
using System.Net.Mail;

public partial class bca_user_Forget_Password : System.Web.UI.Page
{
    private static Random random = new Random();
     Class1 x = new Class1();
    DataTable dat = new DataTable();
    string qry;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pass = RandomString(8);
        x.op();
        qry = "update student_master set password='" + pass + "'" + "where email='" + txt_user.Text + "'";
        x.insert(qry);
        qry = "select * from student_master where email='" + txt_user.Text + "'";
        dat = x.sea(qry);
        x.co();
        if (dat.Rows.Count > 0)
        {
            MailMessage Msg = new MailMessage();
            Msg.From = new MailAddress(txt_user.Text);
            Msg.To.Add(txt_user.Text);
            Msg.Subject = "Please Change your Password After Login";
            Msg.Body = "Your Password is " + pass;
            Msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mjari001@gmail.com", "Admin@surat_123");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;
            lbl_error.Text = "Your One Time Password Will Send Your Email";
            
        }
       else
         {
                lbl_error.Text = "Plz Register First.";
         }
    }
    public static string RandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyz";
        return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
    }
}
