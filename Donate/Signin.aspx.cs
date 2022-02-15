using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(s);
            string sql = "select * from userTable where username like '" + TextBox1.Text.Trim() + "' and password like '" + TextBox2.Text.Trim() + "' ";
            SqlCommand com = new SqlCommand(sql, con);


            string name1 = "";
            con.Open();

            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["ids"] = dr["id"].ToString();
                    Session["name"] = dr["username"].ToString();
                    Label1.Text = " Welcome User " + Session["name"].ToString();
                }

            }
            else
            {
                Label1.Text = "make sure from Your username or password please";
                Session["ids"] = null;
            }
            con.Close();



        }
        catch (Exception ex) { Label1.Text = "Check Your Data There Is Error"; }

    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
