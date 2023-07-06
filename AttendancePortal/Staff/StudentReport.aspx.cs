using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_StudentReport : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();


    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.Select_UNAME(Session["uname"].ToString());
            StdDT = StdAdapter.SelectStd();
            drpstd.DataSource = StdDT;
            drpstd.DataTextField = "STDName";
            drpstd.DataValueField = "SID";
            drpstd.DataBind();
            drpstd.Items.Insert(0, "SELECT");

            drpdiv.Items.Insert(0, "SELECT");
           
        }

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        StuDT = StuAdapter.Select_By_STD_DIV(drpstd.SelectedItem.Text, drpdiv.SelectedItem.Text);
        GridView1.DataSource = StuDT;
        GridView1.DataBind();
        lbl.Text = "Total Student = " + GridView1.Rows.Count.ToString();
    }
    protected void drpstd_SelectedIndexChanged(object sender, EventArgs e)
    {
        DivDT = DivAdapter.Select_By_STD(drpstd.SelectedItem.Text);
        drpdiv.DataSource = DivDT;
        drpdiv.DataTextField = "DivName";
        drpdiv.DataValueField = "DID";
        drpdiv.DataBind();
        drpdiv.Items.Insert(0, "SELECT");
    }
}