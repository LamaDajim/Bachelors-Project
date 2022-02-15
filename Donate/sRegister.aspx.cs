using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //sliderFrame.InnerHtml = @"<div id=slider' ><img src='images/image-slider-2.jpg' alt='' /><img src='images/image-slider-1.jpg' alt='' /></div>";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string date = DateTime.Now.Month + "/" + DateTime.Now.Day + "/" + DateTime.Now.Year;
        //##############################################################################################################
        string Prev_hash = "";
        try
        {
            string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string q = "select hashcode from userTable where id in (select max(id) from userTable )";
            SqlCommand com = new SqlCommand(q, con);
            con.Open();
            Prev_hash = com.ExecuteScalar().ToString(); //executeNonQuery (update delete insert)
            con.Close();
        }
        catch (Exception ex) { Label1.Text = " Error - Getting Hash"; }
        //##############################################################################################################
        string DATA = "(" + TextBox1.Text + "," + TextBox2.Text + "," + TextBox4.Text + "," + TextBox5.Text + "," + TextBox7.Text + "," + DropDownList1.Text + "," + DropDownList2.Text + "," + date + ","+ Prev_hash+")";
        Label2.Text = DATA;
        var sha1 = SHA1.Create(); //MD5
        var inputBytes = Encoding.ASCII.GetBytes(DATA);
        var hash = sha1.ComputeHash(inputBytes);//MD5
        var sb = new StringBuilder();
        for (var i = 0; i < hash.Length; i++)
        {
            sb.Append(hash[i].ToString("x2"));//""
        }
        //Label1.Text = sb.ToString();
        //##############################################################################################################
        try
        {
            string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string q = "insert into userTable (username,password,phone,birthyear,note,mail,gender,city,date1,hashcode) values "+
                       "('" + TextBox1.Text + "' , '" + TextBox2.Text + "', '" + TextBox4.Text + "', " + TextBox5.Text + ", '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + DropDownList1.Text + "', '" + DropDownList2.Text + "','" + date + "','" + sb.ToString() + "' ) ";
            SqlCommand com = new SqlCommand(q, con);
            con.Open();
            int res = com.ExecuteNonQuery(); //executeNonQuery (update delete insert)
            if (res > 0)
            {
                Label1.Text = " Yes Added 1 ( " + sb.ToString();
            }
            else
            {   Label1.Text = "";        }

            con.Close();
        }
        catch (Exception ex) { Label1.Text =  " No - Username is already exsited ...1"; }
        //#############################################################################################################
        try
        {
            string cs1 = WebConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            SqlConnection con1 = new SqlConnection(cs1);
            string q1 = "insert into userTable (username,password,phone,birthyear,note,mail,gender,city,date1,hashcode) values " +
                       "('" + TextBox1.Text + "' , '" + TextBox2.Text + "', '" + TextBox4.Text + "', " + TextBox5.Text + ", '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + DropDownList1.Text + "', '" + DropDownList2.Text + "','" + date + "','" + sb.ToString() + "' ) ";
            SqlCommand com1 = new SqlCommand(q1, con1);
            con1.Open();
            int res1 = com1.ExecuteNonQuery(); //executeNonQuery (update delete insert)
            if (res1 > 0)
            {
                Label1.Text = Label1.Text +" ) Yes Added 2" ;
            }
            else
            { Label1.Text = ""; }
            con1.Close();
        }
        catch (Exception ex) { Label1.Text = "No - Username is already exsited ..."; }

    }

    //-----------------------------------------------------------------------------------------------
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //div1.InnerHtml="Today’s information age has allowed rapidly global communication and networking to shape our modern society by allowing us to transfer and communicate information freely."+
        //                "Many studies show that almost any form of <img src=2.png style='float:left;'> parent involvement could improve the academic achievement for the student.";

        //Label2.Text = "Today’s information age has allowed rapidly global communication and networking to shape our modern society by allowing us to transfer and communicate information freely." +
        //                "Many studies show that almost any form of <img src=2.png style='float:left;'> parent involvement could improve the academic achievement for the student.";

        Response.Redirect("CSignin.aspx");
    }


    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}