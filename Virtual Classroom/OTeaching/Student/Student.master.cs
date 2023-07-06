using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student : System.Web.UI.MasterPage
{
    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StuDT = StuAdapter.Select_By_Uname(Session["uname"].ToString());

           Image4.ImageUrl = StuDT.Rows[0]["image"].ToString();
            Label1.Text = StuDT.Rows[0]["name"].ToString();
        }
    }
}
