using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Password : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {

        StaffDT = StaffAdapter.Staff_check_Surr_pass(txtcurrent.Text, Session["email"].ToString());

        if (StaffDT.Rows.Count == 1)
        {

            StaffAdapter.StaffMST_SELECT_ChangePass(txtnewpass.Text, Session["email"].ToString());
            lbl.Text = "Password Changed";

        }
        else
        {

            lbl.Text = "Invalid Current Pass";
        }

    }
}