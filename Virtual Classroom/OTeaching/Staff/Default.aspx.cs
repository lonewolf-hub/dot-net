 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Default : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.Select_by_email(Session["uname"].ToString());


            lblname.Text = StaffDT.Rows[0]["Name"].ToString();
            lblcourse.Text = StaffDT.Rows[0]["cname"].ToString();

            txtemail.Text = StaffDT.Rows[0]["email"].ToString();
            txtmobile.Text = StaffDT.Rows[0]["mobile"].ToString();
            txtadd.Text = StaffDT.Rows[0]["address"].ToString();
            txtcity.Text = StaffDT.Rows[0]["city"].ToString();
            txtpin.Text = StaffDT.Rows[0]["pincode"].ToString();
            Imgprofile.ImageUrl = StaffDT.Rows[0]["image"].ToString();
            txtexper.Text = StaffDT.Rows[0]["Experience"].ToString();
            txtqulai.Text = StaffDT.Rows[0]["Qualification"].ToString();
            ViewState["sid"] = StaffDT.Rows[0]["SID"].ToString();

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
             StaffAdapter.Update(Convert.ToInt32(ViewState["sid"].ToString()), txtemail.Text, txtmobile.Text, txtadd.Text, txtcity.Text, txtpin.Text, Imgprofile.ImageUrl.ToString(),txtqulai.Text,txtexper.Text);
             Session["uname"] = txtemail.Text;
        Response.Redirect("Default.aspx");
        
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/Admin/StaffImg/" + FileUpload1.FileName));
        Imgprofile.ImageUrl = "~/Admin/StaffImg/" + FileUpload1.FileName.ToString();

    }
}