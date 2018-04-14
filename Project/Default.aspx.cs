using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("select Candidate_Email,Candidate_Password from RegForm where Candidate_Email=@a and Candidate_Password=@b",cn);
            cn.Open();
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Text = "Login Successfuly!!!";
            }
            else
            {
                Label1.Text = "Login Failed";
            }
            cn.Close();
            //Response.Redirect("Default3.aspx");
        }
        catch (Exception ex) {
            Label1.Text = ex.Message;
        }
    }
}