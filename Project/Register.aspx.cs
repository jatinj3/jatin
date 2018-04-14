using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Windows.Forms;
public partial class Register : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    string chk;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadGrid();
        }
        Calendar1.Visible = false;
    }
    void LoadGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from RegForm", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //GridView2.DataSource = dt;
        //GridView2.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    string exm,reg_id;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into RegForm values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", cn);
            //exm = DropDownList1.SelectedItem.ToString();
            cn.Open();
           // cmd.Parameters.AddWithValue("@a", Convert.ToInt32(TextBox8.Text));
            cmd.Parameters.AddWithValue("@a", TextBox10.Text);
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
            //cmd.Parameters.AddWithValue("@h", exm);
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    chk += item.Text + ",";
                }
            }
            cmd.Parameters.AddWithValue("@h", chk);
            string path = FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(MapPath("~/img/" + path));
            cmd.Parameters.AddWithValue("@i", "~/img/" + path);
            cmd.ExecuteNonQuery();
            //cn.Close();
            Label1.Text = "Data Saved";
            //SqlDataAdapter da = new SqlDataAdapter("select Registration_ID from RegForm", cn);
           // DataTable dt = new DataTable();
            //da.Fill(dt);
            
            //object obj = cmd.ExecuteScalar();
           // lblMessage.Text = "Record inserted successfully. ID = " + obj.ToString();



            
            //MessageBox.Show("Data Saved & your Reg_id is:-" + obj.ToString());
           
           cn.Close();
           // MessageBox.Show("Data Saved & your Reg_id is:-" +cmd.ExecuteScalar());
           // LoadGrid();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void  ImageButton1_Click(object sender, ImageClickEventArgs e)
{
    Calendar1.Visible = true;
}
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox9.Text = Calendar1.SelectedDate.ToShortDateString();
    }
   /* protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
           // GridView2.EditIndex = e.NewEditIndex;
            LoadGrid();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        SqlCommand cmd = new SqlCommand("delete from RegForm where Registration_ID='" + id1 + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        LoadGrid();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        LoadGrid();
    }*/
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (TextBox5.Text.Length < 10)
        {
            args.IsValid = false;
        }
        else 
        {
            args.IsValid = true;
        }
    }
   /* protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        TextBox name = (TextBox)(GridView2.Rows[e.RowIndex].FindControl("txtfname"));
        SqlCommand cmd = new SqlCommand("update RegForm set Candidate_FirstName='" + name.Text + "' where Registration_ID='" + id1 + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView2.EditIndex = -1;
        LoadGrid();
    }*/
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    void Clear()
    {
        TextBox10.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox7.Text = String.Empty;
        TextBox9.Text = String.Empty;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        CheckBoxList1.SelectedValue= null;
      //  DropDownList1.SelectedValue = null;
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();
    }
    public void getid()
    {
 
    }
}

