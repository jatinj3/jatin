using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "C")
        {
            SqlCommand cmd = new SqlCommand("insert into cques values(@a,@b,@c,@d,@e,@f,@g)", cn);
            cn.Open();
            cmd.Parameters.AddWithValue("@a", TextBox7.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            cmd.Parameters.AddWithValue("@f", TextBox5.Text);
            cmd.Parameters.AddWithValue("@g", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Label8.Text = "Data Saved";
            cn.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "C++")
        {
            SqlCommand cmd = new SqlCommand("insert into cplusques values(@a,@b,@c,@d,@e,@f,@g)", cn);
            cn.Open();
            cmd.Parameters.AddWithValue("@a", TextBox7.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            cmd.Parameters.AddWithValue("@f", TextBox5.Text);
            cmd.Parameters.AddWithValue("@g", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Label8.Text = "Data Saved";
            cn.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "C#.NET")
        {
            SqlCommand cmd = new SqlCommand("insert into csharpques values(@a,@b,@c,@d,@e,@f,@g)", cn);
            cn.Open();
            cmd.Parameters.AddWithValue("@a", TextBox7.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            cmd.Parameters.AddWithValue("@f", TextBox5.Text);
            cmd.Parameters.AddWithValue("@g", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Label8.Text = "Data Saved";
            cn.Close();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into aspques values(@a,@b,@c,@d,@e,@f,@g)", cn);
            cn.Open();
            cmd.Parameters.AddWithValue("@a", TextBox7.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            cmd.Parameters.AddWithValue("@f", TextBox5.Text);
            cmd.Parameters.AddWithValue("@g", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Label8.Text = "Data Saved";
            cn.Close();
        }
    }
}