using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        string sql = "select date,title,info from AdsTable";
        SqlCommand com = new SqlCommand(sql, con);
        con.Open();
        String news = "Welcom To Our Site ::: There is no new ads ...";
        SqlDataReader dr = com.ExecuteReader();
        DateTime dt = DateTime.Now;
        if (dr.HasRows)
        {
            news = "";
            while (dr.Read())
            {
                news += "<b><font color=#9900ff>(" + dr["date"].ToString() + ")</font>";
                news += "<font color=Blue> " + dr["title"].ToString() + "</font>";
                news += " " + dr["info"].ToString() + "   #   </b>";
            }
        }
        con.Close();
        Label1.Text = news;
        //Label1.Text = "<font color=black>News ........</font>";
    }
}
