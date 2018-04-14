using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class timer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_tick(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Label3.Text) == 0)
        {
            if (Convert.ToInt32(Label1.Text) == 0)
            {
                Session.Clear();
            }
            else
            {
                Label3.Text = "59";
                Label1.Text = (Convert.ToInt32(Label1.Text) - 1).ToString();
            }

        }
        else { Label3.Text = (Convert.ToInt32(Label3.Text) - 1).ToString(); }
    }
}