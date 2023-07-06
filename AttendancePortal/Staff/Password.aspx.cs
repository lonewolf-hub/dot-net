using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Password : System.Web.UI.Page
{
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {

        StaffDT = StaffAdapter.Select_Current_Pass(txtcurrent.Text, Session["uname"].ToString());

            if(StaffDT.Rows.Count==1)
            {

               StaffAdapter.StaffMST_SELECT_ChangePass(txtnewpass.Text,Session["uname"].ToString());
               lbl.Text = "Password Changed";
            
            }
            else
            {
            
                lbl.Text="Invalid Current Pass";
            }

    }
}