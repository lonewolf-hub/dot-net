using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StaffView : System.Web.UI.Page
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
            drpstaff.DataSource = StaffDT;
            drpstaff.DataTextField = "Name";
            drpstaff.DataValueField = "SID";
            drpstaff.DataBind();
            drpstaff.Items.Insert(0, "SELECT");
        }
    }
    protected void btnaddstd_Click(object sender, EventArgs e)
    {
        
        StaffDT = StaffAdapter.SELECT_BY_ID(Convert.ToInt32(drpstaff.SelectedValue));

        txtname.Text = StaffDT.Rows[0]["Name"].ToString();
        txtemail.Text = StaffDT.Rows[0]["Email"].ToString();
        txtmobile.Text = StaffDT.Rows[0]["mobile"].ToString();
        txtqual.Text = StaffDT.Rows[0]["qualification"].ToString();
        txtadd.Text = StaffDT.Rows[0]["add"].ToString();
        txtcity.Text = StaffDT.Rows[0]["city"].ToString();
        txtpin.Text = StaffDT.Rows[0]["pincode"].ToString();      
    }
}