using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registartion : System.Web.UI.Page
{
    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();

    DS_CATE.catemst_SELECTDataTable CDT = new DS_CATE.catemst_SELECTDataTable();
    DS_CATETableAdapters.catemst_SELECTTableAdapter CAdapter = new DS_CATETableAdapters.catemst_SELECTTableAdapter();
    public SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-83GOR2JH;Initial Catalog=OTeaching;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
       // lblfile.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter._select();
            drpcourse.DataSource = CDT;
            drpcourse.DataTextField = "cname";
            drpcourse.DataValueField = "cid";
            drpcourse.DataBind();

            drpcourse.Items.Insert(0, "SELECT");
        }
    }
   
    protected void btnstuadd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {



                FileUpload1.SaveAs(Server.MapPath("~/Studentimg/" + FileUpload1.FileName));
           
            StuAdapter.Insert(txtname.Text,txtemail.Text, txtmobi.Text,"~/Studentimg/" + FileUpload1.FileName,drpcourse.SelectedItem.Text, txtadd.Text, txtcity.Text, txtpin.Text, txtuname.Text, txtpass.Text);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into dbo." + drpcourse.SelectedItem.Text + "TableMst(rollno,name) values('"+ txtroll .Text+ "','" + txtname.Text + "')", con);
            //cmd.CommandType = cmd.CommandText;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();


            lblmsg.Text = "Student Added.";
            txtname.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtemail.Text = "";
            txtmobi.Text = ""; txtpass.Text = "";
            txtpin.Text = "";
            txtuname.Text = "";
            txtcpass.Text = "";
            drpcourse.SelectedIndex = 0;

            }
          


        }
        
    }

    
