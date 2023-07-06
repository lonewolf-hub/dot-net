using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Staff_Default2 : System.Web.UI.Page
{
  //  public List<List<string>> li = new List<List<string>>();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Mark Attendance For " + DateTime.Now.ToShortDateString();
      //  Label1.Text = "Time " +  DateTime.Now.ToString("h:mm:ss tt");
       

        System.Threading.Thread.Sleep(100);
        string currenttime = DateTime.Now.ToLongTimeString();
        lblcurrenttime.Text = currenttime;

        //  string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(constr);
        //   SqlCommand cmd = new SqlCommand("SELECT * FROM Booking WHERE  BookId=@Id", conn);
        //   cmd.Parameters.AddWithValue("@Id", Request.QueryString["Id"]);
        //  SqlDataAdapter da = new SqlDataAdapter(cmd);
        // DataTable dt = new DataTable();
        //  da.Fill(dt);

    }
   

    protected void Button14_Click(object sender, EventArgs e)
    {
        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        SqlDataAdapter da = new SqlDataAdapter("Select rollno,name from " + DropDownList1.SelectedItem.Text + "TableMst order by rollno", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();

        //p code
        // string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
       // li.Clear();
        // SqlConnection con = new SqlConnection(OTeachingConnectionString2);
       /* con.Open();
        SqlCommand cmd = new SqlCommand("select rollno,name from " + DropDownList1.SelectedItem.Text + "TableMst", con);
        SqlDataReader rr = cmd.ExecuteReader();
        while (rr.Read())
        {
            List<string> add = new List<string>();
            add.Add(rr[0].ToString());
            add.Add(rr[1].ToString());
            li.Add(add);
        }
        rr.Close();
        con.Close();*/
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView2.Rows)
        {

        //    int rollno1 = Convert.ToInt32(row.Cells[0].Text);
            String rollno1 = row.Cells[0].Text;
            String studentname1 = row.Cells[1].Text;
            RadioButton rbtn1 = (row.Cells[2].FindControl("RadioButton3") as RadioButton);
            RadioButton rbtn2 = (row.Cells[2].FindControl("RadioButton4") as RadioButton);
            String status1;
            if (rbtn1.Checked)
            {
                status1 = "Present";
            }
            else
            {
                status1 = "Absent";
            }
            String dateofclass1 = DateTime.Now.ToShortDateString();
            // String sclass1 = DropDownList1.SelectedItem.Text;

            String sclass1 = course.Text;
            String starttime = ddlTime.Text;
            String endtime = ddlTime1.Text;
           // string branch = DropDownList1.SelectedItem.Text;


            saveattendance(rollno1, studentname1, dateofclass1, status1, sclass1,starttime,endtime);

        }
        
        Label4.Text = "Attendace has been Saved Successfully";
       
    }
 
    private void saveattendance(String rollno, String studentname, String dateofclass1, String status, String sclass,String starttime,String endtime)
    {
        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        String query = "insert into " + DropDownList1.SelectedItem.Text + "AttMst(rollno,studentname,dateofclasss,attendancestatus,class,starttime,endtime) values('" + rollno + "','" + studentname + "','" + dateofclass1 + "','" + status + "','" + sclass + "','"+ starttime + "','" + endtime + "')";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

       
        SqlConnection con1 = new SqlConnection(OTeachingConnectionString2);
        String query1 = "insert into CourseMst(class,course) values('" + sclass + "','" + DropDownList1.SelectedItem.Text + "')";
        con1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = query1;
        cmd1.Connection = con;
        cmd1.ExecuteNonQuery();
        con1.Close();
    }

    protected void Button2_Clicked(object sender, EventArgs e)
    {

        DateTime dtstart = Convert.ToDateTime("09:30");
        DateTime StartTime = DateTime.ParseExact(dtstart.ToString("HH:mm"), "HH:mm", null);
        DateTime dtend = Convert.ToDateTime("17:30");
        DateTime EndTime = DateTime.ParseExact(dtend.ToString("HH:mm"), "HH:mm", null);
        TimeSpan Interval = new TimeSpan(1, 0, 0);


        while (StartTime <= EndTime)
        {

            ddlTime.Items.Add(StartTime.ToShortTimeString());
            ddlTime1.Items.Add(StartTime.ToShortTimeString());

            StartTime = StartTime.Add(Interval);
           
        }
        ddlTime.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlTime1.Items.Insert(0, new ListItem("--Select--", "0"));


    }
}