using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_AdvanceAttReport : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();

    DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
   
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.Select_UNAME(Session["uname"].ToString());

            lblstd.Text = StaffDT.Rows[0]["StdName"].ToString();

            DivDT = DivAdapter.Select_By_STD(StaffDT.Rows[0]["StdName"].ToString());
            drpdiv.DataSource = DivDT;
            drpdiv.DataTextField = "DivName";
            drpdiv.DataValueField = "DID";
            drpdiv.DataBind();
            drpdiv.Items.Insert(0, "SELECT");
            drpstudent.Items.Insert(0, "SELECT");
        }
    }
    protected void btnsarch_Click(object sender, EventArgs e)
    {
        AttDT = AttAdapter.Select_By_ROLLNO(drpstudent.SelectedItem.Text);
        GridView1.DataSource = AttDT;
        GridView1.DataBind();
        lblcnt.Text = "Result  = " + GridView1.Rows.Count.ToString();
    }
    protected void drpdiv_SelectedIndexChanged(object sender, EventArgs e)
    {

        StuDT = StuAdapter.Select_By_STD_DIV(lblstd.Text, drpdiv.SelectedItem.Text);

        drpstudent.DataSource = StuDT;
        drpstudent.DataTextField = "rollno";
        drpstudent.DataValueField = "sid";
        drpstudent.DataBind();
        drpstudent.Items.Insert(0, "SELECT");
    }
}