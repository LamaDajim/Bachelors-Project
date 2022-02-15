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
        if (Session["ids"] == null)
            Response.Redirect("Signin.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
           // //1 get connection string
           // string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
           // //2
           // SqlConnection con = new SqlConnection(cs);
           // //3
           // string q = "select * from userTable where username like '" + TextBox1.Text + "' and password like '" + TextBox2.Text + "' and iddept = " + DropDownList1.SelectedItem.Value +" ";
           // //4
           // SqlCommand com = new SqlCommand(q, con);
           // //5
           // con.Open();
           // //6
           // SqlDataReader dr = com.ExecuteReader(); //executeNonQuery (update delete insert)
           ////7
           // if (dr.HasRows)
           // {
           //     while (dr.Read())
           //     {
           //         //int id = Convert.ToInt32(dr["id"].ToString());
           //         Session["id"] = dr["id"].ToString();
           //         Session["name"] = dr["name"].ToString();
           //         Response.Write("<script>alert('welcome');</script>");
           //         Label1.Text = Session["name"].ToString();
           //     }
           // }
           // else
           // {
           //     Response.Write("<script>alert('Error User or Pass');</script>");
           //     Session["id"] = null;
           //     Session["name"] = null;
           //     Label1.Text = "";
           // }

           // //8
           // con.Close();


        }
        catch (Exception ex) { Response.Write(ex.Message); }
    }

    //-----------------------------------------------------------------------------------------------

}