using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Security.Cryptography;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //div1.InnerHtml="Today’s information age has allowed rapidly global communication and networking to shape our modern society by allowing us to transfer and communicate information freely."+
        //                "Many studies show that almost any form of <img src=2.png style='float:left;'> parent involvement could improve the academic achievement for the student.";

        //Label2.Text = "Today’s information age has allowed rapidly global communication and networking to shape our modern society by allowing us to transfer and communicate information freely." +
        //                "Many studies show that almost any form of <img src=2.png style='float:left;'> parent involvement could improve the academic achievement for the student.";

        Response.Redirect("Default.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        var sha1 = SHA1.Create(); //MD5
        var inputBytes = Encoding.ASCII.GetBytes(TextBox1.Text.Trim());//MD5
        var hash = sha1.ComputeHash(inputBytes);
        var sb = new StringBuilder();
        for (var i = 0; i < hash.Length; i++)
        {
            sb.Append(hash[i].ToString("x2"));//""
        }
        Label1.Text=sb.ToString();

    }
}