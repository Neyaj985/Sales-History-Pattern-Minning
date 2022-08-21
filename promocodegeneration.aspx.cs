using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections;
using System.Net;
using System.Web.Mail;
public partial class promocodegeneration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    ArrayList price = new ArrayList();
    string cusname, email, phone;
    int top;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string script = "$(document).ready(function () { $('[id*=btnSubmit]').click(); });";
            ClientScript.RegisterStartupScript(this.GetType(), "load", script, true);
        }
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    int pcode;
    private int check(int num)
    {
        string a = "PROMO" + num.ToString();
        data();
        query = "select promocode from promoprice where promocode='" + a + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            return 0;
        }
        else
        {
            return num;
        }
        rd.Close();
        con.Close();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        data();
        query = "delete from promoprice";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "delete from promoquantity";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        if (CheckBox1.Checked == true)
        {
            GridView1.Visible = true;

            top = Convert.ToInt32(txtnouser.Text);
            data();
            query = "select TOP " + top + " * from pricewise ORDER BY totprice DESC";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                pcode = check(randomnumber(00001, 99999));
                if (pcode == 0)
                {
                    pcode = check(randomnumber(00001, 99999));
                }
                else
                {

                }
                data();
                query = "insert into promoprice(cusid,cusname,totprice,email,phno,promocode,status)values('" + rd[0].ToString() + "','" + rd[1].ToString() + "'," + rd[2].ToString() + ",'" + rd[3].ToString() + "','" + rd[4].ToString() + "','" + "PROMO" + pcode + "','top')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            rd.Close();
            con.Close();
        }
        else
        {
            GridView1.Visible = false;
        }
        if (CheckBox3.Checked == true)
        {
            GridView3.Visible = true;
            top = Convert.ToInt32(txtnouser.Text);
            //least
            data();
            query = "select TOP " + top + " * from pricewise ORDER BY totprice ASC";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            while (rd2.Read())
            {
                pcode = check(randomnumber(00001, 99999));
                if (pcode == 0)
                {
                    pcode = check(randomnumber(00001, 99999));
                }
                else
                {

                }
                data();
                query = "insert into promoprice(cusid,cusname,totprice,email,phno,promocode,status)values('" + rd2[0].ToString() + "','" + rd2[1].ToString() + "'," + rd2[2].ToString() + ",'" + rd2[3].ToString() + "','" + rd2[4].ToString() + "','" + "PROMO" + pcode + "','least')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            rd2.Close();
            con.Close();
        }
        else
        {

            GridView3.Visible = false;
        }

        if (CheckBox2.Checked == true)
        {
            GridView2.Visible = true;

            top = Convert.ToInt32(txtnouser.Text);
            data();
            query = "select TOP " + top + " * from quantitywise ORDER BY quantity DESC";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                pcode = check(randomnumber(00001, 99999));
                if (pcode == 0)
                {
                    pcode = check(randomnumber(00001, 99999));
                }
                else
                {

                }
                data();
                query = "insert into promoquantity(cusid,cusname,quantity,email,phno,promocode,status)values('" + rd1[0].ToString() + "','" + rd1[1].ToString() + "'," + rd1[2].ToString() + ",'" + rd1[3].ToString() + "','" + rd1[4].ToString() + "','" + "PROMO" + pcode + "','top')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            rd1.Close();
            con.Close();
        }
        else
        {
            GridView2.Visible = false;
        }
        if (CheckBox4.Checked == true)
        {
            GridView4.Visible = true;
            top = Convert.ToInt32(txtnouser.Text);
            data();
            query = "select TOP " + top + " * from quantitywise ORDER BY quantity ASC";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd3 = cmd.ExecuteReader();
            while (rd3.Read())
            {
                pcode = check(randomnumber(00001, 99999));
                if (pcode == 0)
                {
                    pcode = check(randomnumber(00001, 99999));
                }
                else
                {

                }
                data();
                query = "insert into promoquantity(cusid,cusname,quantity,email,phno,promocode,status)values('" + rd3[0].ToString() + "','" + rd3[1].ToString() + "'," + rd3[2].ToString() + ",'" + rd3[3].ToString() + "','" + rd3[4].ToString() + "','" + "PROMO" + pcode + "','least')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            rd3.Close();
            con.Close();
        }
        else
        {

            GridView4.Visible = false;
        }
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
        GridView4.DataBind();
    }
    ArrayList emailarray = new ArrayList();
    protected void Button2_Click(object sender, EventArgs e)
    {
        //System.Threading.Thread.Sleep(5000);
        
        lblack.Visible = true;
    }
}