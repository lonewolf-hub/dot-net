using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Student_Message : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
    DS_MSG.MSGMST_SELECTDataTable MDT = new DS_MSG.MSGMST_SELECTDataTable();
    DS_MSGTableAdapters.MSGMST_SELECTTableAdapter MAdapter = new DS_MSGTableAdapters.MSGMST_SELECTTableAdapter();

    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();

    private static TimeZoneInfo India_Standard_Time = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    private static TimeZoneInfo Eastern_Standard_Time = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
    private static TimeZoneInfo Tokyo_Standard_Time = TimeZoneInfo.FindSystemTimeZoneById("Tokyo Standard Time");


    public SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-83GOR2JH;Initial Catalog=OTeaching;Integrated Security=True");
    public int f = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  lblsub.Text = "";
        MultiView1.ActiveViewIndex = 0;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView2.DataSource = MDT;
        GridView2.DataBind();
        lblnew.Text = GridView2.Rows.Count.ToString();
    }
    protected void btnappluleave_Click(object sender, EventArgs e)
    {
        

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView2.DataSource = MDT;
        GridView2.DataBind();

        lblnew.Text = GridView2.Rows.Count.ToString();


    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        int f = 0;
        MultiView1.ActiveViewIndex = 1;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView3.DataSource = MDT;
        GridView3.DataBind();
        lblold.Text = GridView3.Rows.Count.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int f = 1;
        MultiView1.ActiveViewIndex = 1;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 1);
        GridView3.DataSource = MDT;
        GridView3.DataBind();
        lblold.Text = GridView3.Rows.Count.ToString();
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       // MAdapter.MSGMST_Update_Status(1, Convert.ToInt32(e.CommandArgument.ToString()));
        MultiView1.ActiveViewIndex = 2;

        MDT = MAdapter.Select_By_ID(Convert.ToInt32(e.CommandArgument.ToString()));
        lblfname.Text = MDT.Rows[0]["Fname"].ToString();
        lblsub.Text = MDT.Rows[0]["subject"].ToString();
        lblmsg.Text = MDT.Rows[0]["message"].ToString();
    }
    protected void btnreply_Click(object sender, EventArgs e)
    {
        MAdapter.Insert(Session["email"].ToString(), lblfname.Text, lblsub.Text, txtreply.Text);
        lblsub.Text = "Reply Successfully";
        txtreply.Text = "";
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        MDT = MAdapter.Select_By_ID(Convert.ToInt32(e.CommandArgument.ToString()));

        String title1 = MDT.Rows[0]["subject"].ToString();
        MAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
        MultiView1.ActiveViewIndex = 1;


        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        String query1 = "Delete FROM NotMst WHERE title='" + title1 + "'";
        SqlConnection con1 = new SqlConnection(OTeachingConnectionString2);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = query1;
        cmd1.Connection = con1;
        cmd1.ExecuteNonQuery();
        if (f == 0)
        {
            MultiView1.ActiveViewIndex = 1;
            MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
            GridView3.DataSource = MDT;
            GridView3.DataBind();
            lblold.Text = GridView3.Rows.Count.ToString();
        }
        else
        {
            MultiView1.ActiveViewIndex = 1;
            MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 1);
            GridView3.DataSource = MDT;
            GridView3.DataBind();
            lblold.Text = GridView3.Rows.Count.ToString();
        }
    }

    protected void btnsendmsg_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
       
        StaffDT = StaffAdapter.Select_by_email(Session["uname"].ToString());


        String time = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, India_Standard_Time).ToShortTimeString(); 
      //  String time = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, Eastern_Standard_Time).ToShortTimeString();
        DateTime dateTime_Tokyo = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, Tokyo_Standard_Time);


        String name = StaffDT.Rows[0]["Name"].ToString();
        String title = txtsubmsg.Text;
        String msg = txtmsgmsg.Text;
         String date = DateTime.Now.ToShortDateString();
     //   String time = DateTimeOffset.Now.ToLocalTime().ToString();
        //String time = DateTime.Now.ToShortTimeString();
        con.Open();

       // MAdapter.Insert(Session["email"].ToString(), Session["email"].ToString(), txtsubmsg.Text, txtmsgmsg.Text);
 
        SqlCommand cmd1 = new SqlCommand("insert into dbo.MessageMst(Fname,Tname,Subject,Message,Status) values('" + Session["email"].ToString() + "','" + Session["email"].ToString() + "','" + txtsubmsg.Text + "','" + txtmsgmsg.Text + "', 1 )", con);
     //   cmd.CommandType = cmd.CommandText;
        cmd1.ExecuteNonQuery();
        cmd1.Dispose();
        

        SqlCommand cmd = new SqlCommand("insert into dbo.NotMst(name,title,message,date,time) values('" + name + "','" + title + "','" + msg + "','" + date + "','" + time + "')", con);
        //cmd.CommandType = cmd.CommandText;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblsendmsg.Text = "Message Send";
        txtmsgmsg.Text = "";
        txtsubmsg.Text = "";
     //   drpstaff.SelectedIndex = 0;

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
 


    }

    protected void GridView3_RowCommand1(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void btnreply_Click1(object sender, EventArgs e)
    {

    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtmsgmsg_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    
}