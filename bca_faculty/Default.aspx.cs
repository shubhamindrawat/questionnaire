using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class bca_faculty_Default : System.Web.UI.Page
{
    Class1 x = new Class1();
    string qry,count;
    protected void Page_Load(object sender, EventArgs e)
    {
        x.op();
        qry = "select count(*) from student_master";
        count = x.sca(qry);
       // Label1.Text = count;
        x.co();
    }
}