using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_AttReport : System.Web.UI.Page
{
    DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.Select_UNAME(Session["uname"].ToString());
            //StdDT = StdAdapter.SelectStd();
            //drpstd.DataSource = StdDT;
            //drpstd.DataTextField = "STDName";
            //drpstd.DataValueField = "SID";
            //drpstd.DataBind();           
            //  drpstd.Items.Insert(0, "SELECT");
            lblstd.Text = StaffDT.Rows[0]["StdName"].ToString();

            DivDT = DivAdapter.Select_By_STD(StaffDT.Rows[0]["StdName"].ToString());
            drpdiv.DataSource = DivDT;
            drpdiv.DataTextField = "DivName";
            drpdiv.DataValueField = "DID";
            drpdiv.DataBind();
            drpdiv.Items.Insert(0, "SELECT");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        // DivDT = DivAdapter.SELECT_BY_ID(Convert.ToInt32(drpdiv.SelectedValue));
        
        //StuDT = StuAdapter.Select_By_STD_DIV(lblstd.Text, drpdiv.SelectedItem.Text);
        //int rstu=Convert.ToInt32(DivDT.Rows[0]["Seat"].ToString()) - Convert.ToInt32(StuDT.Rows.Count.ToString());
        //lblstudent.Text = "Total Admitted =" + StuDT.Rows.Count.ToString() + " , Remaining Student = " + rstu;

        string stddd=lblstd.Text.Substring(0,1) + drpdiv.SelectedItem.Text;

        AttDT = AttAdapter.Select_Report(stddd + "%", Calendar1.SelectedDate.Date.GetDateTimeFormats()[8].ToString());

        GridView1.DataSource = AttDT;
        GridView1.DataBind();
        lblcnt.Text = "Result = " + GridView1.Rows.Count.ToString();
    }
}