using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddStaff : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            StdDT = StdAdapter.SelectStd();
            drpstd.DataSource = StdDT;
            drpstd.DataTextField = "STDName";
            drpstd.DataValueField = "SID";
            drpstd.DataBind();            
            drpstd.Items.Insert(0, "SELECT");
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        StaffDT = StaffAdapter.Select_UNAME(txtuname.Text);

        if (StaffDT.Rows.Count == 1)
        {
            lbl.Text = "UserName alredy exists !!";
        }
        else
        {

            FileUpload1.SaveAs(Server.MapPath("~/StaffImg/" + FileUpload1.FileName));
            StaffAdapter.Insert(txtname.Text, drpstd.SelectedItem.Text, txtemail.Text, txtmobile.Text, "~/StaffImg/" + FileUpload1.FileName, txtqual.Text, txtadd.Text, txtcity.Text, txtpin.Text, txtuname.Text, txtpass.Text,DropDownList1.SelectedItem.Text);
            lbl.Text = "Record Added Successfully";

            txtadd.Text = "";
            txtcity.Text = "";
            txtemail.Text = "";
            txtmobile.Text = "";
            txtname.Text = "";
            txtpin.Text = "";
            txtqual.Text = "";
            txtuname.Text = "";
            drpstd.SelectedIndex = 0;
        }
    }
}