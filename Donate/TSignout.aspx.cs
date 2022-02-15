using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ids"] == null)
            Response.Redirect("Signin.aspx");
        else
        {
            Session["ids"] = null;
            Response.Redirect("Signin.aspx");
        }
    }
}
