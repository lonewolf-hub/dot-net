using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Password : System.Web.UI.Page
{
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        StuDT = StuAdapter.Select_Check_Current_pas(txtcurrent.Text, Session["sname"].ToString());
        if (StuDT.Rows.Count == 1)
        {

            StuAdapter.StudentMST_SELECT_ChangePass(txtnewpass.Text, Session["sname"].ToString());
            lbl.Text = "Password Changed";

        }
        else
        {

            lbl.Text = "Invalid Current Password";
        }
    }
}