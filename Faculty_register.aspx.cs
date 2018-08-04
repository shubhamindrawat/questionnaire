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


public partial class bca_user_Faculty_register : System.Web.UI.Page
{
    private static Random random = new Random();
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    String chk = ".jpg , .jpeg";
    string qry, str, radio;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (r1.Checked)
        {
            radio = r1.Value.ToString();
        }
        else if (r2.Checked)
        {
            radio = r2.Value.ToString();
        }
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        x.op();
        qry = "select * from faculty_master where email='" + txt_email.Text + "'";

        dat = x.sea(qry);
        if (dat.Rows.Count == 0)
        {
            x.co();
            if (MyCaptcha.IsValid)
            {
                string pass = RandomString(8);
                if (finput.HasFile)
                {
                    str = System.IO.Path.GetExtension(finput.PostedFile.FileName);
                    if (chk.Contains(str))
                    {
                        finput.PostedFile.SaveAs(Server.MapPath("~/Faculty_Image/" + txt_email.Text.Split('@')[0] + str));
                        MailMessage Msg = new MailMessage();
                        Msg.From = new MailAddress(txt_email.Text);
                        Msg.To.Add(txt_email.Text);
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
                        lbl_error.Text = "Your Password Details Sent to your mail";
                        x.op();
                        qry = "insert into faculty_master values('" + txt_facultyid.Text + "','" + txt_username.Text + "','" + txt_email.Text + "','" + pass.ToString() + "','" + txt_contact.Text + "','" + radio + "','" + txt_dob.Text + "','" + txt_skill.Text + "')";
                        x.insert(qry);
                        x.co();
                        Response.AddHeader("Refresh", "5;url=Login.aspx");
                    }
                    else
                    {
                        lbl_error.Text = "Please Select Image File Only";
                    }
                }
                else
                {
                    lbl_error.Text = "Please Select the File";
                }
            }
            else
            {
                lbl_error.Text = "Captcha is Wrong";
            }
        }
        else
        {
            x.co();
            lbl_error.Text = "You Are Already Registered. Now you will be redirect to login page";
            Response.AddHeader("Refresh", "5;url=Login.aspx");
        }

    }
    public static string RandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyz";
        return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
    }

}