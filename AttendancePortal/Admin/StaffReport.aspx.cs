using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StaffReport : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.SelectStaff();
            GvStaff.DataSource = StaffDT;
            GvStaff.DataBind();
        }
    }
    protected void GvStaff_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        StaffAdapter.Delete(Convert.ToInt32(GvStaff.DataKeys[e.RowIndex].Value));
        StaffDT = StaffAdapter.SelectStaff();
        GvStaff.DataSource = StaffDT;
        GvStaff.DataBind();
    }
}