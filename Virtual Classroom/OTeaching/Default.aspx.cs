using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();

    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lblstaff.Text = "";
            lblstudent.Text = "";
    }
    protected void btnstafflogin_Click(object sender, EventArgs e)
    { StaffDT = StaffAdapter.Select_For_Login(txtstaffuname.Text, txtstaffpass.Text);
        if (StaffDT.Rows.Count == 1)
        {
            Session["uname"] = txtstaffuname.Text;
            Session["email"] = txtstaffuname.Text;
            Session["name"] = StaffDT.Rows[0]["Name"].ToString();
            Session["cname"] = StaffDT.Rows[0]["cname"].ToString();
            Response.Redirect("Staff/Default.aspx");


        }
        else
        {
            lblstaff.Text = "Login Error !!";
        }


    }
    protected void btnstulogin_Click(object sender, EventArgs e)
    {  StuDT = StuAdapter.Select_for_LOGIN(txtxstuuname.Text, txtstupassword.Text);
        if (StuDT.Rows.Count == 1)
        {
            Session["uname"] = txtxstuuname.Text;
            Session["email"] = StuDT.Rows[0]["Email"].ToString();
            Session["cname"] = StuDT.Rows[0]["course"].ToString();
            Response.Redirect("Student/MyProfile.aspx");
        }
        else
        {

            lblstudent.Text = "Login Error !!";
        }

    }
}