using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string a, b;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "administrator@gmail.com" || TextBox2.Text=="198")
        {
              try
            {
                SqlCommand cmd = new SqlCommand("select Email,Passwd from admin1 where Email=@a and Passwd=@b", cn);
                cn.Open();
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Text = "Login Successfuly!!!";
                    
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Label1.Text = "Login Failed";
                }
                
                cn.Close();
                
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        else        {
            try
            {
                SqlCommand cmd = new SqlCommand("select Candidate_Email,Candidate_Password from RegForm where Candidate_Email=@a and Candidate_Password=@b", cn);
                cn.Open();
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Text = "Login Successfuly!!!";
                    Session["textbox1"] = TextBox1.Text;
                    Response.Redirect("student.aspx");
                }
                else
                {
                    Label1.Text = "Login Failed";
                }
                cn.Close();
                
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}
