using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    string chk;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadGrid();
        }
       // Calendar1.Visible = false;
    }
    void LoadGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from RegForm", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
   /* protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into RegForm values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)", cn);
            cn.Open();
           // cmd.Parameters.AddWithValue("@a", Convert.ToInt32(TextBox8.Text));
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox7.Text);
            if (RadioButton1.Checked)
            {
                cmd.Parameters.AddWithValue("@c", RadioButton1.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@c", RadioButton2.Text);
            }
            cmd.Parameters.AddWithValue("@d", TextBox9.Text);
            cmd.Parameters.AddWithValue("@e", TextBox2.Text);
            cmd.Parameters.AddWithValue("@f", TextBox3.Text);
            cmd.Parameters.AddWithValue("@g", TextBox5.Text);
            cmd.Parameters.AddWithValue("@h", TextBox6.Text);
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    chk += item.Text + ",";
                }
            }
            cmd.Parameters.AddWithValue("@i", chk);
            string path = FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(MapPath("~/img/" + path));
            cmd.Parameters.AddWithValue("@j", "~/img/" + path);
            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "Data Saved";
            LoadGrid();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }*/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   /* protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox9.Text = Calendar1.SelectedDate.ToShortDateString();
    }*/
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlCommand cmd = new SqlCommand("delete from RegForm where Registration_ID='" + id1 + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        LoadGrid();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadGrid();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        LoadGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        TextBox fname = (TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtfname"));
        TextBox lname = (TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtlname"));
        SqlCommand cmd = new SqlCommand("update RegForm set Candidate_FirstName='" + fname.Text + "',Candidate_LastName='" + lname.Text + "' where Registration_ID='" + id1 + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        LoadGrid();
    }
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }
}