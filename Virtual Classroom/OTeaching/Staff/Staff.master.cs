using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Staff : System.Web.UI.MasterPage
{
    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.Select_by_email(Session["uname"].ToString());
            
            Image4.ImageUrl = StaffDT.Rows[0]["Image"].ToString();
            Label1.Text = "Welcome " + StaffDT.Rows[0]["name"].ToString();
          

        }
    }


    protected void Button10_Click(object sender, EventArgs e)
    {

    }
}
