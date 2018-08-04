using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Net.Mail;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
public partial class bca_user_Result : System.Web.UI.Page
{
    Class1 x = new Class1();
    string qry,status;
    DataTable dat = new DataTable();
    XmlDocument xmlDoc = new XmlDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        x.op();
        qry = "select correct from obj_bca_master as a, " + Session["paper"].ToString() + " as b where a.ques_id=b.ques_id";
        dat = x.sea(qry);
        x.co();
        int correct = 0, incorrect = 0;
        xmlDoc.Load(Session["fname"].ToString());
        XmlElement rootElem = xmlDoc.DocumentElement; //Gets the root element, in your xml its "Root"
        for(int i=0;i<Convert.ToInt32(Session["max_ques_no"]);i++)
        {
            if (rootElem.ChildNodes[i].InnerText.ToString() != "")
            {
                int selected = Convert.ToInt32(rootElem.ChildNodes[i].InnerText.ToString()) + 1;
                int answer = Convert.ToInt32(dat.Rows[i][0].ToString());
                if (selected == answer)
                {
                    correct++;
                }
                else if (selected != answer)
                {
                    incorrect++;
                }
            }
        }
        lbl_correct.Text = correct.ToString();
        lbl_incorrect.Text = incorrect.ToString();
        lbl_attempted.Text = (correct + incorrect).ToString();
        lbl_total.Text = correct.ToString();
        DataTable dt = new DataTable();
        
        dt.Columns.AddRange(new DataColumn[2] { new DataColumn(" "), new DataColumn("  ") });
        dt.Rows.Add("Correct Answers", correct.ToString());
        dt.Rows.Add("Incorrect answers", incorrect.ToString());
        dt.Rows.Add("Total attempted", (incorrect + correct).ToString());
        dt.Rows.Add("Total marks obtained", correct.ToString());

        if (Session["max_ques_no"].ToString() == "30")
        {
            if(Convert.ToInt32(lbl_total.Text) >= 11)
            {
                status = "Pass";
            }
            else
            {
                status = "Fail";
            }
        }

        if (Session["max_ques_no"].ToString() == "50")
        {
            if (Convert.ToInt32(lbl_total.Text) >= 17)
            {
                status = "Pass";
            }
            else
            {
                status = "Fail";
            }
        }
        if (Session["max_ques_no"].ToString() == "70")
        {
            if (Convert.ToInt32(lbl_total.Text) >= 25)
            {
                status = "Pass";
            }
            else
            {
                status = "Fail";
            }
        }
        try
        {
            x.op();
            qry = "insert into result_master values(" + Session["student_id"].ToString() + ",'" + Session["paper"].ToString() + "'," + correct + "," + Session["max_ques_no"].ToString() + ",'" + status + "')";
            x.insert(qry);
            x.co();
            Response.AddHeader("Refresh", "10;URL=Delete.aspx");
            lbl_delete.Text = "Thanks For Giving Exam within 10 seconds...";
            ExportToPdf(dt);
        }
        catch(Exception ex)
        {
            Response.Redirect("Default.aspx");
        }
       
    }
    public void ExportToPdf(DataTable dt)
    {
        Document document = new Document();
        PdfWriter writer = PdfWriter.GetInstance(document, new FileStream("D://sample.pdf", FileMode.Create));
        document.Open();
        iTextSharp.text.Font font15 = iTextSharp.text.FontFactory.GetFont(FontFactory.HELVETICA, 15);
        PdfPTable table = new PdfPTable(dt.Columns.Count);
        PdfPCell cell = new PdfPCell(new Phrase("Result"));
        cell.Colspan = dt.Columns.Count;
        table.DefaultCell.Border = Rectangle.NO_BORDER;
        table.HorizontalAlignment = 1;
        foreach (DataColumn c in dt.Columns)
        {
            table.AddCell(new Phrase(c.ColumnName, font15));
        }
        foreach (DataRow r in dt.Rows)
        {
            if (dt.Rows.Count > 0)
            {
                table.AddCell(new Phrase(r[0].ToString(), font15));
                table.AddCell(new Phrase(r[1].ToString(), font15));
            }
        }
        document.AddHeader("Header", "The result of exam for your paper is as follows:-");
        document.AddAuthor("questionnaire.com");
        document.Add(table);
        document.Close();
        send_result();
    }
    void send_result()
    {
        MailMessage mail = new MailMessage();
        string mailid = Session["student_email"].ToString();
        mail.To.Add(mailid);
        mail.From = new MailAddress("dummy.shubhamindrawat@gmail.com");
        mail.Subject = "Exam Result";
        string Body = "Download the below attached PDF to view your result";
        mail.Body = Body;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("dummy.shubhamindrawat@gmail.com", "jain1234");
        smtp.Port = 587;  //465
        smtp.EnableSsl = true;
        mail.Attachments.Add(new Attachment("D://sample.pdf"));
        smtp.Send(mail);
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["student_id"] == null)
        {
            Response.Redirect("../login.aspx");
        }
    }
}