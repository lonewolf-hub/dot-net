using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Satff : System.Web.UI.Page
{
    DS_CATE.catemst_SELECTDataTable CDT = new DS_CATE.catemst_SELECTDataTable();
    DS_CATETableAdapters.catemst_SELECTTableAdapter CAdapter = new DS_CATETableAdapters.catemst_SELECTTableAdapter();

    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblfile.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter._select();
            drpcourse.DataSource = CDT;
            drpcourse.DataTextField = "cname";
            drpcourse.DataValueField = "cid";
            drpcourse.DataBind();

            drpcourse.Items.Insert(0, "SELECT");
        }
    }
    protected void btnaddstaff_Click(object sender, EventArgs e)
    {
        SDT = SAdapter.Select_by_email(txtemail.Text);

        if (SDT.Rows.Count == 1)
        {
            lblerror.Text="Email alredy exists !!";
        }
        else
        {
            if (FileUpload1.HasFile)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;
                if (contenttype == "image/jpeg" || contenttype == "image/png" || contenttype == "image/jpg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/Admin/staffimg/") + FileUpload1.FileName);

                    SAdapter.Insert(txtname.Text, txtmobile.Text, txtadd.Text, txtcity.Text, txtpin.Text, "~/Admin/staffimg/" + FileUpload1.FileName, txteducation.Text, txtexperience.Text, drpcourse.SelectedItem.Text, txtemail.Text, txtpassword.Text);
                    txtpin.Text = "";
                    txtmobile.Text = "";
                    txtname.Text = "";
                    txtadd.Text = ""; txtcity.Text = ""; txteducation.Text = ""; txtexperience.Text = ""; txtemail.Text = "";
                    txtpassword.Text = ""; txtconfirmpass.Text = "";
                    Label1.Text = "";
                    lblerror.Text = "Staff Detail Added !!";
                        
                }
                else
                {
                    Label1.Text = "Wrong Format Please Upload only image File";
                }
            }
            else
            {
                lblfile.Text = "!!!";

            }
        }
    }
    protected void txtpin_TextChanged(object sender, EventArgs e)
    {
       
       

    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void txtmobile_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtadd_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void txteducation_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void txtexperience_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtemail_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {
        
      

    }
    protected void txtconfirmpass_TextChanged(object sender, EventArgs e)
    {
       
    }
}