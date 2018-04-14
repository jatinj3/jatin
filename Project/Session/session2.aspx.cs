using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session_session2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        //Label1.Text = Session["name"].ToString();
        // Label1.Text = Application["start"].ToString();
        Label1.Text = Application["NoOfVisitors"].ToString();
    }
}