using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ida"] == null)
            Response.Redirect("ADefault.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // GridView1.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // GridView1.Visible = false;
       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Label1.Text=GridView1.SelectedDataKey.Values[0].ToString();
        //try
        //{
        //    //1 get connection string
        //    string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    //2
        //    SqlConnection con = new SqlConnection(cs);
        //    //3
        //    string q = "delete from userTable where id =" + GridView1.SelectedDataKey.Values[0].ToString() + " ";
        //    //4
        //    SqlCommand com = new SqlCommand(q, con);
        //    //5
        //    con.Open();
        //    //6
        //    int res = com.ExecuteNonQuery(); //executeNonQuery (update delete insert)
        //    //7
        //    con.Close();
        //    Label1.Text = "Yes Deleted the User who has id=" + GridView1.SelectedDataKey.Values[0].ToString();
        //    //Response.Redirect("Service.aspx");
        //    GridView1.DataBind();
        //}
        //catch (Exception ex) { Response.Write(ex.Message); }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            //1 get connection string
            string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //2
            SqlConnection con = new SqlConnection(cs);
            //3
            string date = DateTime.Now.ToShortDateString();

            string q = "insert into AdsTable (title,info,date) values('" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + date + "')";
            //4
            SqlCommand com = new SqlCommand(q, con);
            //5
            con.Open();
            //6
            int res = com.ExecuteNonQuery(); //executeNonQuery (update delete insert)
            //7
            con.Close();
            //Label1.Text = "Yes Deleted the User who has id=" + GridView1.SelectedDataKey.Values[0].ToString();
            //Response.Redirect("Service.aspx");
            GridView1.DataBind();
        }
        catch (Exception ex) { Response.Write(ex.Message); }
    }
    
}
