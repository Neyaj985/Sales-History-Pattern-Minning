using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Collections;

public partial class categorywise : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    ArrayList mon = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        data();
        query = "select count(gender) from datasetdet where gender='male'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            data();
            query = "update genderwise set count=" + rd[0] + " where gender='male'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        rd.Close();
        con.Close();

        data();
        query = "select count(gender) from datasetdet where gender='female'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd1 = cmd.ExecuteReader();
        while (rd1.Read())
        {
            data();
            query = "update genderwise set count=" + rd1[0] + " where gender='female'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        rd1.Close();
        con.Close();

        data();
        query = "select distinct(purmonth) from datasetdet";
        cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            mon.Add(dr[0]);
        }
        dr.Close();
        con.Close();

        for (int i = 0; i < mon.Count; i++)
        {
            data();
            query = "select count(purmonth) from datasetdet where purmonth='" + mon[i] + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd11 = cmd.ExecuteReader();
            while (rd11.Read())
            {
                data();
                query = "update monthwise set count=" + rd11[0] + " where monname='" + mon[i] + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            rd11.Close();
            con.Close();
        }

        Chart1.DataBind();
        Chart2.DataBind();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}