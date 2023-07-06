using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_AdvancceReport : System.Web.UI.Page
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
    protected void drpdiv_SelectedIndexChanged(object sender, EventArgs e)
    {
        StuDT = StuAdapter.Select_By_STD_DIV(lblstd.Text, drpdiv.SelectedItem.Text);

        drpstudent.DataSource = StuDT;
        drpstudent.DataTextField = "rollno";
        drpstudent.DataValueField = "sid";
        drpstudent.DataBind();
        drpstudent.Items.Insert(0, "SELECT");
    }
    protected void btnsarch_Click(object sender, EventArgs e)
    {
        StuDT = StuAdapter.SELECT_BY_ID(Convert.ToInt32(drpstudent.SelectedValue));
        if (StuDT.Rows.Count == 1)
        {
            lblroll.Text = StuDT.Rows[0]["rollno"].ToString();
            lblname.Text = StuDT.Rows[0]["name"].ToString();
            lblemail.Text = StuDT.Rows[0]["email"].ToString();
            lblmobile.Text = StuDT.Rows[0]["mobile"].ToString();
            lbldob.Text = StuDT.Rows[0]["dob"].ToString();
            lbladd.Text = StuDT.Rows[0]["add"].ToString();
            lblcity.Text = StuDT.Rows[0]["city"].ToString();
            lblpin.Text = StuDT.Rows[0]["pincode"].ToString();
            lbluname.Text = StuDT.Rows[0]["uname"].ToString();
            lblpass.Text = StuDT.Rows[0]["pass"].ToString();
            imgg.ImageUrl = StuDT.Rows[0]["image"].ToString();
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            MultiView1.ActiveViewIndex = -1;
        }
    }
}