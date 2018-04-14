using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies_cks2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //Label1.Text = "Welcome"+" "+ Request.Cookies["test"].Value;
            Label1.Text = "Welcome" + " " + Request.QueryString["Name"];
        }
    }
}