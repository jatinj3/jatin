using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "C")
        {
            Session["subname"] = "C";
            Response.Redirect("c_exm.aspx");
        }
        else if (DropDownList1.SelectedItem.ToString() == "C++")
        {
            Session["subname"] = "C++";
            Response.Redirect("cplus_exm.aspx");
        }
        else if (DropDownList1.SelectedItem.ToString() == "C#.NET")
        {
            Session["subname"] = "C#.NET";

            Response.Redirect("csharp_exm.aspx");
        }
        else
        {
            Session["subname"] = "ASP.NET";
            Response.Redirect("asp.net_exm.aspx");
        }
    }
}