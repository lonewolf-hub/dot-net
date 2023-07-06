using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student : System.Web.UI.MasterPage
{
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());

            Image4.ImageUrl = StuDT.Rows[0]["image"].ToString();
            Label1.Text = StuDT.Rows[0]["name"].ToString();
        }
    }
}
