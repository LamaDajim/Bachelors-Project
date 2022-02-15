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
            string sql = "select * from centerTable where username like '" + TextBox1.Text.Trim() + "' and password like '" + TextBox2.Text.Trim() + "' ";
            SqlCommand com = new SqlCommand(sql, con);




            string name1 = "";
            con.Open();
            //int id = (int)Session["id1"];
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["idt"] = dr["id"].ToString();
                    Label1.Text = " Welcome Center";
                }
                //Session["status"] = "Welcome " + Session["namep"].ToString() + "  you can now use all services";
                //table2.Visible = false;
            }
            else
            {
                Label1.Text = "make sure from Your Number or password please";
                Session["idt"] = null;
            }
            con.Close();

        }
        catch (Exception ex) { Label1.Text = "Check Your Data There Is Error"; }
    }

   
}
