using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentFPass : System.Web.UI.Page
{
    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblpass.Text = "";
    }
    protected void btngetpass_Click(object sender, EventArgs e)
    {

        StuDT = StuAdapter.ForgotPassword(txtemail.Text, txtmobile.Text);
        if (StuDT.Rows.Count == 0)
        {
            lblpass.Text = "Invalid Detail";
        }
        else
        {
            lblpass.Text = "Password = " + StuDT.Rows[0]["Password"].ToString();
        }
    }
}