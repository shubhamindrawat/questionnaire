using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.IO;
using System.Windows.Forms;
using System.Windows.Forms.Layout;

public partial class bca_user_exam : System.Web.UI.Page
{
    Class1 x = new Class1();
    string qry;
    DataTable dat = new DataTable();
    XmlDocument xmlDoc1 = new XmlDocument();
    XmlDocument xmlDoc2 = new XmlDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            var drives = DriveInfo.GetDrives();
            string drive = (drives[1].ToString()).Substring(0,1);
            Session["fname"] = drive + "://answers_" + Session["student_id"].ToString() + ".xml";
            Session["t_fname"] = drive + "://timer_" + Session["student_id"].ToString() + ".xml";
        
            x.op();
            qry = "select * from result_master where student_id= " + Session["student_id"].ToString() + " and paper='" + Session["paper"].ToString() + "'";
            dat = x.sea(qry);

            if (dat.Rows.Count == 1)
            {
                Response.Redirect("Alert.aspx");
                x.co();
            }
            else
            {
                x.co();
                //SendKeys.SendWait("{F11}");
                img_graphics.Visible = false;
                //Session["paper"] = "obj_403_9_17";
                Session["ques_no"] = "1";
                x.op();
                qry = "select count(*) from " + Session["paper"].ToString();
                Session["max_ques_no"] = x.sca(qry);
                x.co();
                load_ques();
                Image1.ImageUrl = "~/Student_Image/" + Session["student_email"].ToString() + ".jpg ";
                //  lbl_uname.Text = "Username          : " + Session["student_username"];

            }
        }
        if (!System.IO.File.Exists(Session["fname"].ToString()))
        {
            XmlNode rootNode = xmlDoc1.CreateElement("answers");
            xmlDoc1.AppendChild(rootNode);
            xmlDoc1.Save(Session["fname"].ToString());

            for (int i = 1; i <= Convert.ToInt32(Session["max_ques_no"]); i++)
            {
                XmlNode userNode = xmlDoc1.CreateElement("Q" + i);
                userNode.InnerText = "";
                rootNode.AppendChild(userNode);
            }
            xmlDoc1.Save(Session["fname"].ToString());
        }
        if (!System.IO.File.Exists(Session["t_fname"].ToString()))
        {
            int max_ques=Convert.ToInt32(Session["max_ques_no"].ToString());
            if ( max_ques > 0  && max_ques <=30)
            {
                ViewState["hours"] = 0;
                ViewState["minutes"] = 30;
                ViewState["seconds"] = 0;
            }
            else if(max_ques > 30 && max_ques <=50)
            {
                ViewState["hours"] = 1;
                ViewState["minutes"] = 0;
                ViewState["seconds"] = 0;
            }

            else if (max_ques > 50 && max_ques <=70)
            {
                ViewState["hours"] = 1;
                ViewState["minutes"] = 30;
                ViewState["seconds"] = 0;
            }
            XmlNode rootNode = xmlDoc2.CreateElement("timer");
            xmlDoc2.AppendChild(rootNode);
            xmlDoc2.Save(Session["t_fname"].ToString());

            XmlNode hoursNode = xmlDoc2.CreateElement("hours");
            hoursNode.InnerText = ViewState["hours"].ToString();
            rootNode.AppendChild(hoursNode);

            XmlNode minutesNode = xmlDoc2.CreateElement("minutes");
            minutesNode.InnerText = ViewState["minutes"].ToString();
            rootNode.AppendChild(minutesNode);

            XmlNode secondsNode = xmlDoc2.CreateElement("seconds");
            secondsNode.InnerText = ViewState["seconds"].ToString();
            rootNode.AppendChild(secondsNode);

            xmlDoc2.Save(Session["t_fname"].ToString());
        }
        else
        {
            xmlDoc2.Load(Session["t_fname"].ToString());
            XmlElement rootElem = xmlDoc2.DocumentElement;
            ViewState["hours"] = rootElem.ChildNodes[0].InnerText;
            ViewState["minutes"] = rootElem.ChildNodes[1].InnerText;
            ViewState["seconds"] = rootElem.ChildNodes[2].InnerText;
        }
    }

    void load_ques()
    {
        x.op();
        qry = "select ques,graphics,option1,option2,option3,option4 from obj_bca_master as a, " + Session["paper"].ToString() + " as b where a.ques_id=b.ques_id and b.ques_no=" + Session["ques_no"].ToString();
        dat = x.sea(qry);
        lbl_ques_no.Text = "Q" + Session["ques_no"].ToString() + ". ";
        lbl_ques.Text = dat.Rows[0][0].ToString();
        if (dat.Rows[0][1] != null)
        {
            img_graphics.ImageUrl = Server.MapPath("~/ques_image/" + dat.Rows[0][1].ToString());
            img_graphics.Visible = true;
        }
        rbl_options.Items.Clear();
        rbl_options.Items.Add(new ListItem(dat.Rows[0][2].ToString(), "1"));
        rbl_options.Items.Add(new ListItem(dat.Rows[0][3].ToString(), "2"));
        rbl_options.Items.Add(new ListItem(dat.Rows[0][4].ToString(), "3"));
        rbl_options.Items.Add(new ListItem(dat.Rows[0][5].ToString(), "4"));
        x.co();
        if (Session["ques_no"].ToString() == "1")
        {
            btn_first.Visible = false;
            btn_prev.Visible = false;
            btn_next.Visible = true;
            btn_last.Visible = true;
        }
        else if (Session["ques_no"].ToString() == Session["max_ques_no"].ToString())
        {
            btn_first.Visible = true;
            btn_prev.Visible = true;
            btn_next.Visible = false;
            btn_last.Visible = false;
        }
        else
        {
            btn_first.Visible = true;
            btn_prev.Visible = true;
            btn_next.Visible = true;
            btn_last.Visible = true;
        }
        load_ans();
    }
    protected void btn_first_Click(object sender, EventArgs e)
    {
        Session["ques_no"] = "1";
        load_ques();
    }
    protected void btn_prev_Click(object sender, EventArgs e)
    {
        if (Session["ques_no"].ToString() != "1")
        {
            Session["ques_no"] = Convert.ToInt32(Session["ques_no"].ToString()) - 1;
        }
        load_ques();
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        if (Session["ques_no"].ToString() != Session["max_ques_no"].ToString())
        {
            Session["ques_no"] = Convert.ToInt32(Session["ques_no"].ToString()) + 1;
        }
        load_ques();
    }
    protected void btn_last_Click(object sender, EventArgs e)
    {
        Session["ques_no"] = Session["max_ques_no"];
        load_ques();
    }
    void load_ans()
    {
        if (System.IO.File.Exists(Session["fname"].ToString()))
        {
            int ques_no = Convert.ToInt32(Session["ques_no"]) - 1;
            xmlDoc1.Load(Session["fname"].ToString());
            XmlElement rootElem = xmlDoc1.DocumentElement;
            if (rootElem.ChildNodes[ques_no].InnerText.ToString() != "")
            {
                rbl_options.SelectedIndex = Convert.ToInt32(rootElem.ChildNodes[ques_no].InnerText);
            }
        }
    }
    protected void rbl_options_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (System.IO.File.Exists(Session["fname"].ToString()))
        {
            int ques_no = Convert.ToInt32(Session["ques_no"]) - 1;
            xmlDoc1.Load(Session["fname"].ToString());
            XmlElement rootElem = xmlDoc1.DocumentElement;
            rootElem.ChildNodes[ques_no].InnerText = rbl_options.SelectedIndex.ToString();
            xmlDoc1.Save(Session["fname"].ToString());
        }
    }
    protected void btn_end_test_Click(object sender, EventArgs e)
    {
        Response.Redirect("end_test.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lbl_timer.Text = "";
        int sec = Convert.ToInt32(ViewState["seconds"].ToString());
        int min = Convert.ToInt32(ViewState["minutes"].ToString());
        int hour = Convert.ToInt32(ViewState["hours"].ToString());
        ViewState["seconds"] = sec;
        lbl_timer.Text = hour + " :" + min + ":" + sec;
        if (sec == 0)
        {
            if (min == 0)
            {
                if (hour == 0)
                {
                    Response.Redirect("end_test.aspx");
                }
                else
                {
                    ViewState["hours"] = hour - 1;
                    ViewState["minutes"] = 59;
                    ViewState["seconds"] = 59;
                }
            }
            else
            {
                ViewState["seconds"] = 59;
                ViewState["minutes"] = min - 1;
            }
        }
        else
        {
            ViewState["seconds"] = sec - 1;
        }
        if (System.IO.File.Exists(Session["fname"].ToString()))
        {
            xmlDoc2.Load(Session["t_fname"].ToString());
            XmlElement rootElem = xmlDoc2.DocumentElement;
            rootElem.ChildNodes[0].InnerText = ViewState["hours"].ToString();
            rootElem.ChildNodes[1].InnerText = ViewState["minutes"].ToString();
            rootElem.ChildNodes[2].InnerText = ViewState["seconds"].ToString();
            xmlDoc2.Save(Session["t_fname"].ToString());
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["student_id"] == null)
        {
            Response.Redirect("../login.aspx");
        }
    }
}