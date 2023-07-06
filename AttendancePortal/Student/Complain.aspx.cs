using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Complain : System.Web.UI.Page
{
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();

    DS_COMPLAIN.Complainmst_SELECTDataTable CompDT = new DS_COMPLAIN.Complainmst_SELECTDataTable();
    DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter CompAdapter = new DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CompDT = CompAdapter.SelectCompalin();
            GridView1.DataSource = CompDT;
            GridView1.DataBind();
        }
        lbl.Text = "";
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {  StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());
       CompAdapter.Insert(StuDT.Rows[0]["rollno"].ToString(), StuDT.Rows[0]["Name"].ToString(), txtsubj.Text, txtmsg.Text, "Pending");
       CompDT = CompAdapter.SelectCompalin();
       GridView1.DataSource = CompDT;
       GridView1.DataBind();
       lbl.Text = "complain Sent";
       txtmsg.Text = "";
       txtsubj.Text = "";


    }
}