using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Default : System.Web.UI.Page
{
    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT = StaffAdapter.Select_UNAME(Session["uname"].ToString());


            lblname.Text = StaffDT.Rows[0]["Name"].ToString();
            lblstd.Text = StaffDT.Rows[0]["stdname"].ToString();

            txtemail.Text = StaffDT.Rows[0]["email"].ToString();
            txtmobile.Text = StaffDT.Rows[0]["mobile"].ToString();
            txtadd.Text = StaffDT.Rows[0]["add"].ToString();
            txtcity.Text = StaffDT.Rows[0]["city"].ToString();
            txtpin.Text = StaffDT.Rows[0]["pincode"].ToString();
            Imgprofile.ImageUrl = StaffDT.Rows[0]["image"].ToString();
            ViewState["sid"] = StaffDT.Rows[0]["SID"].ToString();

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
             StaffAdapter.Update(Convert.ToInt32(ViewState["sid"].ToString()), txtemail.Text, txtmobile.Text, Imgprofile.ImageUrl.ToString(), txtadd.Text, txtcity.Text, txtpin.Text);
        
        
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/StaffImg/" + FileUpload1.FileName));
        Imgprofile.ImageUrl = "~/StaffImg/" + FileUpload1.FileName.ToString();

    }
}