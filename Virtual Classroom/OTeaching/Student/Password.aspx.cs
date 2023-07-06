using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Password : System.Web.UI.Page
{
    DS_REGI.StudentMst_SELECTDataTable RDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter RAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        RDT = RAdapter.Student_Chck_Curre_Pass(txtcurrent.Text, Session["uname"].ToString());
        if (RDT.Rows.Count == 1)
        {

            RAdapter.StudentMST_SELECT_ChangePass(txtnewpass.Text, Session["uname"].ToString());
            lbl.Text = "Password Changed";

        }
        else
        {

            lbl.Text = "Invalid Current Password";
        }
    }
}