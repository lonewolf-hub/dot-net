using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_Default2 : System.Web.UI.Page
{
    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        StuDT = StuAdapter.Select_By_Uname(Session["uname"].ToString());

        lblname.Text = StuDT.Rows[0]["Name"].ToString();
        lblcourse.Text = StuDT.Rows[0]["course"].ToString();

    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        String name = lblname.Text = StuDT.Rows[0]["Name"].ToString();
        String course = lblcourse.Text;
        lblcourse1.Text = DropDownList2.SelectedItem.Text;
        //  string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        //   SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        // SqlDataAdapter da = new SqlDataAdapter("Select * from " + DropDownList1.SelectedItem.Text + "AttMst Where class='" + DropDownList2.SelectedItem.Text + "'", con);


        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        
        String query1 = "SELECT COUNT(class) FROM " + course + "AttMst WHERE studentname='" + name + "' and class='"+ DropDownList2.SelectedItem.Text + "'";
        SqlConnection con1 = new SqlConnection(OTeachingConnectionString2);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = query1;
        cmd1.Connection = con1;
        cmd1.ExecuteNonQuery();

        object objCount1 = cmd1.ExecuteScalar();
        int iCount1 = (int)objCount1;

      //  String count = "SELECT COUNT(class) FROM " + course + "AttMst WHERE studentname='"+ name + "' and class='" + DropDownList2.SelectedItem.Text + "'";
        
        //present

        String query2 = "SELECT COUNT(class) FROM " + course + "AttMst WHERE studentname='" + name + "' and class='" + DropDownList2.SelectedItem.Text + "' and attendancestatus='Present'";
        SqlConnection con2 = new SqlConnection(OTeachingConnectionString2);
        con2.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = query2;
        cmd2.Connection = con2;
        cmd2.ExecuteNonQuery();
        object objCount2 = cmd2.ExecuteScalar();
        int iCount2 = (int)objCount2;
        
        Label4.Text = iCount1.ToString(); 
        Label5.Text = iCount2.ToString(); 
        float f= (((iCount2)/ ((float)iCount1)) * 100.0f);
        Label6.Text =f.ToString()+" %";       
    }
}