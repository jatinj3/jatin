using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies_cks1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*HttpCookie cookies = new HttpCookie("test");//Temporary Cookies
        cookies["Name"] = TextBox1.Text;
        Response.Cookies.Add(cookies);
        Response.Redirect("cks2.aspx");*/
        /*HttpCookie cookies = new HttpCookie("test");//Permanent Cookies
        cookies["Name"] = TextBox1.Text;
        cookies.Expires = DateTime.Now.AddMinutes(2);
        Response.Cookies.Add(cookies);
        Response.Redirect("cks2.aspx");*/
        Response.Redirect("cks2.aspx?Name="+TextBox1.Text);//Query Strings
    }
}