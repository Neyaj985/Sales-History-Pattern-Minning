using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections;
public partial class utiliminenew : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    ArrayList price = new ArrayList();
    string cusname, email, phone;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        data();
        query = "delete from pricewise";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "delete from quantitywise";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();


        data();
        query = "select distinct(cusid) from datasetdet where cusid <> '' ";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            price.Add(rd[0].ToString());
        }
        rd.Close();
        con.Close();

        for (int i = 0; i < price.Count; i++)
        {
            data();
            query = "select cusname,email,phone from datasetdet where cusid='" + price[i].ToString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cusname = dr[0].ToString();
                email = dr[1].ToString();
                phone = dr[2].ToString();
            }
            dr.Close();
            con.Close();

            data();
            query = "select sum(proprice) from datasetdet where cusid='" + price[i].ToString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                data();
                query = "insert into pricewise(cusid,cusname,totprice,email,phno)values('" + price[i].ToString() + "','" + cusname + "'," + rd1[0] + ",'" + email + "','" + phone + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }


            rd1.Close();
            con.Close();

            data();
            query = "select sum(quantity) from datasetdet where cusid='" + price[i].ToString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd11 = cmd.ExecuteReader();
            while (rd11.Read())
            {
                data();
                query = "insert into quantitywise(cusid,cusname,quantity,email,phno)values('" + price[i].ToString() + "','" + cusname + "'," + rd11[0] + ",'" + email + "','" + phone + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            rd11.Close();
            con.Close();

            GridView1.DataBind();
            GridView2.DataBind();
        }
    }
  
}