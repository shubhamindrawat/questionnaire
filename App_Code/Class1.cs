using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

public class Class1
{
	public SqlConnection cn;
    public SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    public Class1()
	{
        cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=online_exam;Integrated Security=True");
    }

    public void insert(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
    }
    public void op()
    {
        cn.Open();    
    }
    public void co()
    {
        cn.Close();
    }
    public DataTable sea(string qry)
    {
        dt.Clear();
        SqlDataAdapter da = new SqlDataAdapter(qry, cn);
        da.Fill(dt);
        return dt;
    }
    public string sca(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, cn);
        string result = cmd.ExecuteScalar().ToString();
        return result;
    }
}