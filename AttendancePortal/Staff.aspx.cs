using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff : System.Web.UI.Page
{
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.SelectStaff();
            GvStaff.DataSource = StaffDT;
            GvStaff.DataBind();
            lblstaff.Text = GvStaff.Rows.Count.ToString();
        }
    }
}