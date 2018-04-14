using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class cplus_exm : System.Web.UI.Page
{
    static int count = 0;
    static int Correctans = 0;
    static int wrongans1 = 0;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int i;
    string st;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label6.Text = Session["textbox1"].ToString();
            Label8.Text = Session["subname"].ToString();
            Label4.Text = DateTime.Now.ToShortDateString();
            Label3.Text = DateTime.Now.ToShortTimeString();
            ViewState["i"] = 0;

            SqlCommand cmd = new SqlCommand("select * from cplusques where qid=" + i + "", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "cplusques");
            Label1.Text = ds.Tables["cplusques"].Rows[0][1].ToString();
            RadioButton1.Text = ds.Tables["cplusques"].Rows[0][2].ToString();
            RadioButton2.Text = ds.Tables["cplusques"].Rows[0][3].ToString();
            RadioButton3.Text = ds.Tables["cplusques"].Rows[0][4].ToString();
            RadioButton4.Text = ds.Tables["cplusques"].Rows[0][5].ToString();
        }
    }
protected void nxt_Click(object sender, EventArgs e)
    {

        RadioButton1.Checked = false; RadioButton2.Checked = false;
        RadioButton3.Checked = false; RadioButton4.Checked = false;
        // string cs = WebConfigurationManager.ConnectionStrings["admins"].ConnectionString;
        // SqlConnection cn = new SqlConnection(cs);
        // cn.Open();
        i = Convert.ToInt32(ViewState["i"]) + 1;
        SqlDataAdapter da = new SqlDataAdapter("select * from cplusques", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "cplusques");
        ViewState["i"] = (int)ViewState["i"] + 1;
        if (ds != null && (int)ViewState["i"] < ds.Tables["cplusques"].Rows.Count)
        {
            Label1.Text = ds.Tables["cplusques"].Rows[i][1].ToString();
            RadioButton1.Text = ds.Tables["cplusques"].Rows[i][2].ToString();
            RadioButton2.Text = ds.Tables["cplusques"].Rows[i][3].ToString();
            RadioButton3.Text = ds.Tables["cplusques"].Rows[i][4].ToString();
            RadioButton4.Text = ds.Tables["cplusques"].Rows[i][5].ToString();
            //st = ds.Tables["cques"].Rows[i][6].ToString();
          

        }
        else
        {
            Label11.Text = "You have attempted all the questions.Click on End Exam Button to see the result";

        }
        // cn.Close();  
        //  //NewMethod();
        // i = int.Parse(Session["no"].ToString());
        //  //count += 1;
        //SqlCommand cmd = new SqlCommand("select * from cques where qid=" + i + "", cn);
        // //cn.Open();
        //  SqlDataAdapter da = new SqlDataAdapter(cmd);
        // cmd.Connection = cn;
        // DataSet ds = new DataSet();
        //  da.Fill(ds, "cques");
        ////  string st = RadioButtonList1.SelectedItem.ToString();
        //  /*foreach (DataRow dr in ds.Tables["cques"].Rows)
        //  {
        //       st = dr[6].ToString();
        //  }*/

        //  string st = ds.Tables["cques"].Rows[i][6].ToString();
        //  if (RadioButton1.Checked == true)
        //  {
        //      if (RadioButton1.Text == st)
        //      {
        //          correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
        //      }
        //      else
        //      {
        //          wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
        //      }
        //  }
        //  else if (RadioButton2.Checked == true)
        //  {
        //      if (RadioButton2.Text == st)
        //      {
        //          correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
        //      }
        //      else
        //      {
        //          wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
        //      }
        //  }
        //  else if (RadioButton3.Checked == true)
        //  {
        //      if (RadioButton3.Text == st)
        //      {
        //          correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
        //      }
        //      else
        //      {
        //          wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
        //      }
        //  }
        //  else
        //  {
        //      if (RadioButton4.Text == st)
        //      {
        //          correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
        //      }
        //      else
        //      {
        //          wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
        //      }
        //  }

        //  //NewMethod();

        // // //Correctans+=1;
        // RadioButton1.Checked = false; RadioButton2.Checked = false;
        //  RadioButton3.Checked = false; RadioButton4.Checked = false;

        //  NewMethod(); 
    }
    public void NewMethod()
    {

        // string st = ds.Tables["cques"].Rows[i][6].ToString();

        //str = ds.Tables["cques"].Rows[count][6].ToString();
        // i += 1;
        
    }


    protected void end_Click(object sender, EventArgs e)
    {
        corrmsg.Visible = true; wrongmsg.Visible = true;
        correct.Visible = true;
        wrongans.Visible = true;
        // correct.Text =Correctans.ToString();
        // wrongans.Text = "wrong="+ wrongans1;
    }
    /*  protected void Timer1_tick(object sender, EventArgs e)
      {
          if (Convert.ToInt32(sec.Text) != 0 && Convert.ToInt32(min.Text) != 0)
          {
              if (Convert.ToInt32(sec.Text) == 0)
              {
                  if (Convert.ToInt32(min.Text) == 0)
                  {
                      Session.Clear();
                  }
                  else
                  {
                      sec.Text = "59";
                      min.Text = (Convert.ToInt32(min.Text) - 1).ToString();
                  }

              }
              else 
              { 
                  sec.Text = (Convert.ToInt32(sec.Text) - 1).ToString(); 
              }
          }
          else
           {
               timeout.Text = "Your Time is Over";
               corrmsg.Visible = true; wrongmsg.Visible = true;
               correct.Visible = true;
               wrongans.Visible = true;
           }
      }*/
    protected void submit_Click(object sender, EventArgs e)
    {
      //  ViewState["i"] = (int)ViewState["i"] + 1;   
        ViewState["res"] = 0;
        //ViewState["i"] = (int)ViewState["i"] - 1;
        // i = Convert.ToInt32(ViewState["i"].ToString());
        // SqlCommand cmd = new SqlCommand("select * from cques where qid=" + i + "", cn);
       //i = Convert.ToInt32(ViewState["i"].ToString());
        SqlCommand cmd = new SqlCommand("select * from cplusques", cn);
             cn.Open();
            //i = Convert.ToInt32(ViewState["i"]) + 1;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // cmd.Connection = cn;
            // DataSet ds = new DataSet();
            da.Fill(ds, "cplusques");
            //ViewState["i"] = (int)ViewState["i"] + 1;
            int i = Convert.ToInt32(ViewState["i"]);
            string st = ds.Tables["cplusques"].Rows[i][6].ToString();
            //  i = Convert.ToInt32(ViewState["i"]) + 1;
            //Label2.Text = st;
            if (RadioButton1.Checked == true)
            {
                if (RadioButton1.Text == st)
                {
                    correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
                    int r = Convert.ToInt32(ViewState["res"]);
                    ViewState["res"] = r + 1;
                }
                else
                {
                    wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
                    ViewState["res"] = ViewState["res"];
                    //ViewState["i"] = (int)ViewState["i"] + 1;
                }
            }
            else if (RadioButton2.Checked == true)
            {
                if (RadioButton2.Text == st)
                {
                    correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
                    int r = Convert.ToInt32(ViewState["res"]);
                    ViewState["res"] = r + 1;
                    //ViewState["i"] = (int)ViewState["i"] + 1;
                }
                else
                {
                    wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
                    ViewState["res"] = ViewState["res"];
                    //ViewState["i"] = (int)ViewState[" i"] + 1;
                }
            }
            else if (RadioButton3.Checked == true)
            {
                if (RadioButton3.Text == st)
                {
                    correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
                    int r = Convert.ToInt32(ViewState["res"]);
                    ViewState["i"] = r + 1;
                    //ViewState["i"] = (int)ViewState["i"] + 1;
                }
                else
                {
                    wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
                    ViewState["res"] = ViewState["res"];
                    // ViewState["i"] = (int)ViewState["i"] + 1;
                }
            }
            else
            {
                if (RadioButton4.Text == st)
                {
                    correct.Text = (Convert.ToInt32(correct.Text) + 1).ToString();
                    int r = Convert.ToInt32(ViewState["res"]);
                    ViewState["res"] = r + 1;
                    //ViewState["i"] = (int)ViewState["i"] + 1;
                }
                else
                {
                    wrongans.Text = (Convert.ToInt32(wrongans.Text) + 1).ToString();
                    ViewState["res"] = ViewState["res"];
                    //ViewState["i"] = (int)ViewState["i"] + 1;
                }
            }

        }

    }