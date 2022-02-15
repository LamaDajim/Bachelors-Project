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
        //try
        //{
        //    string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(s);
        //    string sql = "select * from students where studentnum like '" + TextBox1.Text.Trim() + "' and password like '" + TextBox2.Text.Trim() + "' ";
        //    SqlCommand com = new SqlCommand(sql, con);


        //    //SqlConnection con1 = new SqlConnection(s);
        //    //string sql1 = "update students set password ='" + TextBox3.Text.Trim() + "' where studentnum like '" + TextBox1.Text.Trim() + "' ";
        //    //SqlCommand com1 = new SqlCommand(sql1, con1);

        //    string name1 = "";
        //    con.Open();
        //    //int id = (int)Session["id1"];
        //    SqlDataReader dr = com.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        while (dr.Read())
        //        {
        //            Session["ids"] = dr["studentnum"].ToString();
        //            Session["name"] = dr["name"].ToString();
        //            Label1.Text = " Welcome Student " + Session["name"].ToString();
        //        }
        //        //Session["status"] = "Welcome " + Session["namep"].ToString() + "  you can now use all services";
        //        //table2.Visible = false;
        //    }
        //    else
        //    {
        //        Label1.Text = "make sure from Your Number or password please";
        //        Session["ids"] = null;
        //    }
        //    con.Close();

        //    //if (TextBox3.Text.Trim() != "" && Session["ids"] != null)
        //    //{
        //    //    con1.Open();
        //    //    com1.ExecuteNonQuery();
        //    //    con1.Close();
        //    //    Label1.Text = "Welcome the update password succsessed";
        //    //    //table2.Visible = false;
        //    //}


        //}
        //catch (Exception ex) { Label1.Text = "Check Your Data There Is Error"; }

    }

   
}
