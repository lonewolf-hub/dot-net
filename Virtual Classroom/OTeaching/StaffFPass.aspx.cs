using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffFPass : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblpass.Text = "";

    }
    protected void btngetpass_Click(object sender, EventArgs e)
    {
        SDT = SAdapter.ForgotPassword(txtemail.Text, txtmobile.Text);
        if (SDT.Rows.Count == 0)
        {
            lblpass.Text = "Invalid Detail";
        }
        else
        {
            lblpass.Text = "Password = " + SDT.Rows[0]["Password"].ToString();
        }
    }
}