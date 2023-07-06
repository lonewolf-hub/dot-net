using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Myattendance : System.Web.UI.Page
{
    DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());

            //AttDT = AttAdapter.Select_By_ROLLNO(StuDT.Rows[0]["rollno"].ToString());

            //GridView1.DataSource = AttDT;
            //GridView1.DataBind();
            //lbl.Text = "Result = " + GridView1.Rows.Count.ToString();
        }
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        if (drpmonth.SelectedIndex == 0)
        {
            lbl.Text = "Select month first !!";
        }
        else
        {
            StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());

            AttDT = AttAdapter.Select_Roll_month(StuDT.Rows[0]["rollno"].ToString(), "%" + drpmonth.SelectedValue + "%");

            GridView1.DataSource = AttDT;
            GridView1.DataBind();
            lbl.Text = "Result = " + GridView1.Rows.Count.ToString();
        }
    }
}