using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Att : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();


    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();

    DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        lblatt.Text = "";
        lblcnt.Text = "";
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
        StuDT = StuAdapter.Select_By_STD_DIV(lblstd.Text, drpdiv.SelectedItem.Text);
        GridView1.DataSource = StuDT;
        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 0;
       
    }
    protected void btnaddatt_Click(object sender, EventArgs e)
    {
        AttDT = AttAdapter.Selecr_Allready_Saved(GridView1.Rows[0].Cells[0].Text, Calendar1.SelectedDate.Date.GetDateTimeFormats()[8].ToString());

        if (AttDT.Rows.Count == 1)
        {
            lblatt.Text = "Attendance Alredy Saved";
        }
        else
        {

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string rollno = GridView1.Rows[i].Cells[0].Text;
                string name = GridView1.Rows[i].Cells[1].Text;
                DropDownList drpattt = GridView1.Rows[i].Cells[2].FindControl("drpatt") as DropDownList;

                AttAdapter.Insert(rollno, name, Calendar1.SelectedDate.Date.GetDateTimeFormats()[8].ToString(), drpattt.SelectedItem.Text, Session["uname"].ToString());

            }
            MultiView1.ActiveViewIndex = -1;
            drpdiv.SelectedIndex = 0;
            lblatt.Text = "Attendance Saved";
        }
    }
}