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
        //        Response.Redirect("Signin.aspx");

        ////Session["ids"] = "12345";
        
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
        ////Label1.Text=GridView1.SelectedDataKey.Values[0].ToString();
        //try
        //{
        //        string ev="";
        //        if (RadioButton1.Checked)
        //            ev = "easy";
        //        else if (RadioButton2.Checked)
        //            ev = "medium";
        //        else
        //            ev = "hard";
        //        string idd = GridView1.SelectedDataKey.Values[0].ToString();
        //        string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //        SqlConnection con = new SqlConnection(cs);
        //        string q = "select id from evaluation where studentnum='"+ Session["ids"].ToString()+"' and doctorid="+ idd +"  ";
        //        SqlCommand com = new SqlCommand(q, con);
        //        con.Open();
        //        SqlDataReader dr = com.ExecuteReader();
        //        if (dr.HasRows)
        //        {
        //            SqlConnection con1 = new SqlConnection(cs);
        //            string q1 = "update evaluation set eval= '" + ev + "' where studentnum='" + Session["ids"].ToString() + "' and doctorid=" + idd + "  ";
        //            SqlCommand com1 = new SqlCommand(q1, con1);
        //            con1.Open();
        //            com1.ExecuteNonQuery();
        //            con1.Close();
        //        }
        //        else
        //        {
        //            string date = DateTime.Now.Day.ToString() + "-" + DateTime.Now.Month.ToString() + "-" + DateTime.Now.Year.ToString();
        //            SqlConnection con2 = new SqlConnection(cs);
        //            string q2 = "insert into evaluation (eval,studentnum,doctorid,date) values('" + ev + "','"+ Session["ids"].ToString() +"',"+ idd +",'"+ date +"')   ";
        //            SqlCommand com2 = new SqlCommand(q2, con2);
        //            con2.Open();
        //            com2.ExecuteNonQuery();
        //            con2.Close();
        //        }
        //        con.Close();
        //        refresh(idd);
        //        Label7.Text = "";
        //}
        //catch (Exception ex) { Label7.Text="Select row before"; }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Select")
        //{
        //    // #############################################################
        //    int rowindex = Convert.ToInt32(e.CommandArgument);
        //    string idd = GridView1.DataKeys[rowindex].Values[0].ToString();
        //    //string idd = GridView1.Rows[rowindex].Cells[1].Text;
        //    //TextBox2.Text = idd;
        //    refresh(idd);
        //    // #############################################################
        //}

    }
    //-------------------------------------------------------------------------------------
    protected void refresh(string idd)
    {
        //try
        //{
        //    string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(cs);
        //    string q = "select count (id) as m,eval from evaluation where doctorid=" + idd + " group by eval ";
        //    SqlCommand com = new SqlCommand(q, con);
        //    con.Open();
        //    SqlDataReader dr = com.ExecuteReader();
        //    Label2.Text = "0";
        //    Label4.Text = "0";
        //    Label6.Text = "0";
        //    if (dr.HasRows)
        //    {

        //        while (dr.Read())
        //        {
        //            if (dr["eval"].ToString() == "easy")
        //                Label2.Text = dr["m"].ToString();
        //            if (dr["eval"].ToString() == "medium")
        //                Label4.Text = dr["m"].ToString();
        //            if (dr["eval"].ToString() == "hard")
        //                Label6.Text = dr["m"].ToString();
        //        }
        //    }
        //    con.Close();
        //    Label7.Text = "";
        //}
        //catch { }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    string idd = GridView1.SelectedDataKey.Values[0].ToString();
        //    string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //     string date = DateTime.Now.Day.ToString() + "-" + DateTime.Now.Month.ToString() + "-" + DateTime.Now.Year.ToString();
        //    SqlConnection con2 = new SqlConnection(cs);
        //    string q2 = "insert into comments (comment,studentnum,doctorid,date) values('" + TextBox2.Text + "','" + Session["ids"].ToString() + "'," + idd + ",'" + date + "')   ";
        //    SqlCommand com2 = new SqlCommand(q2, con2);
        //    con2.Open();
        //    com2.ExecuteNonQuery();
        //    con2.Close();
        //    GridView3.DataBind();
        //    Label7.Text = "";
        //}
        //catch (Exception ex) { Label7.Text = "Select row before"; }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    string idd = GridView1.SelectedDataKey.Values[0].ToString();
        //    string cs = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    string date = DateTime.Now.ToShortDateString();
        //    SqlConnection con2 = new SqlConnection(cs);
        //    string q2 = "delete from comments where id =" + TextBox3.Text + " and studentnum like '" + Session["ids"].ToString() + "'   ";
        //    SqlCommand com2 = new SqlCommand(q2, con2);
        //    con2.Open();
        //    com2.ExecuteNonQuery();
        //    con2.Close();
        //    GridView3.DataBind();
        //    Label7.Text = "";
        //}
        //catch (Exception ex) { Label7.Text = "Sure of your date"; }
    }
}
