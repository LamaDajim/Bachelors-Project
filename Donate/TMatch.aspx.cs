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
        //if (Session["ids"] == null)
            //Response.Redirect("Signin.aspx");
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

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Label1.Text=GridView1.SelectedDataKey.Values[0].ToString();
        //try
        //{
        //    string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(cs);
        //    string q = "insert into doctorTable (name,username,phone,mail,major,password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList4.SelectedItem.Text + "','12345')";
        //    SqlCommand com = new SqlCommand(q, con);
        //    con.Open();
        //    int res = com.ExecuteNonQuery(); //executeNonQuery (update delete insert)
        //    con.Close();
        //    GridView1.DataBind();
        //}
        //catch (Exception ex) { Response.Write(ex.Message); }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Select")
        //{
        //    // #############################################################
        //    int rowindex = Convert.ToInt32(e.CommandArgument);
        //    Label1.Text = GridView1.DataKeys[rowindex].Values[1].ToString();
        //    // Label2.Text = GridView1.SelectedDataKey.Values[1].ToString();
        //    // #############################################################
        //}

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}
