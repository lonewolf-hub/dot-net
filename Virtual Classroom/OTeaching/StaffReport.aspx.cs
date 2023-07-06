using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffReport : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SDT = SAdapter.select();
            GridView1.DataSource = SDT;
            GridView1.DataBind();

            lbl.Text = GridView1.Rows.Count.ToString();
        }
    }
}