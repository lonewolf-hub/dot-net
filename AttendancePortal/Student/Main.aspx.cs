using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Main : System.Web.UI.Page
{
    DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();

    DS_LEAVE.Leavemst_SELECTDataTable LeaveDT = new DS_LEAVE.Leavemst_SELECTDataTable();
    DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter LeaveAdapter = new DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter();
     DS_COMPLAIN.Complainmst_SELECTDataTable CompDT = new DS_COMPLAIN.Complainmst_SELECTDataTable();
    DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter CompAdapter = new DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {

            StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());


            AttDT = AttAdapter.Select_By_ROLLNO(StuDT.Rows[0]["rollno"].ToString());
            lbltotalatt.Text = AttDT.Rows.Count.ToString();


            AttDT = AttAdapter.Select_Roll_Atatus(StuDT.Rows[0]["rollno"].ToString(), "Present");
            lblpresent.Text = AttDT.Rows.Count.ToString();

            AttDT = AttAdapter.Select_Roll_Atatus(StuDT.Rows[0]["rollno"].ToString(), "Absent");
            lblabsent.Text = AttDT.Rows.Count.ToString();

            AttDT = AttAdapter.Select_Roll_Atatus(StuDT.Rows[0]["rollno"].ToString(), "Leave");
            lblleave.Text = AttDT.Rows.Count.ToString();

            LeaveDT = LeaveAdapter.Select_By_RollNo(StuDT.Rows[0]["rollno"].ToString());
            lbltotalleave.Text = LeaveDT.Rows.Count.ToString();


            CompDT = CompAdapter.Select_By_ROLL(StuDT.Rows[0]["rollno"].ToString());
            lbltotalattcompl.Text = CompDT.Rows.Count.ToString();

        }
    }
}