using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Leave : System.Web.UI.Page
{
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();

    DS_LEAVE.Leavemst_SELECTDataTable LeaveDT = new DS_LEAVE.Leavemst_SELECTDataTable();
    DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter LeaveAdapter = new DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";

    }
    protected void btnappluleave_Click(object sender, EventArgs e)
    {
        StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());

        LeaveAdapter.Insert(StuDT.Rows[0]["rollno"].ToString(),StuDT.Rows[0]["Name"].ToString(),StuDT.Rows[0]["stdname"].ToString(),txtmsg.Text,Convert.ToInt32(DropDownList1.SelectedItem.Text),"Pending");
    lbl.Text="Apply for leave successfully";
    txtmsg.Text = "";
    DropDownList1.SelectedIndex = 0;

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
         StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());
        LeaveDT=LeaveAdapter.Select_By_RollNo(StuDT.Rows[0]["rollno"].ToString());

        GridView1.DataSource=LeaveDT;
        GridView1.DataBind();

    }
}