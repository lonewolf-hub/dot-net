using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Upload : System.Web.UI.Page
{    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
    DS_UPLOAD.UPLOADMST_SELECTDataTable UDT = new DS_UPLOAD.UPLOADMST_SELECTDataTable();
    DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter UAdapter = new DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter();
    DS_CATE.catemst_SELECTDataTable CDT = new DS_CATE.catemst_SELECTDataTable();
    DS_CATETableAdapters.catemst_SELECTTableAdapter CAdapter = new DS_CATETableAdapters.catemst_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter._select();
            drpcourse.DataSource = CDT;
            drpcourse.DataTextField = "Cname";
            drpcourse.DataValueField = "Cid";
            drpcourse.DataBind();
            drpcourse.Items.Insert(0, "SELECT");

            SDT = SAdapter.select();
            drpstaff.DataSource = SDT;
            drpstaff.DataTextField = "Name";
            drpstaff.DataValueField = "sid";
            drpstaff.DataBind();
            drpstaff.Items.Insert(0, "SELECT");

        }
    }
    protected void btnsearchcourse_Click(object sender, EventArgs e)
    {
     

            UDT = UAdapter.Select_By_Course(drpcourse.SelectedItem.Text);
            GvUpload.DataSource = UDT;
            GvUpload.DataBind();
            MultiView1.ActiveViewIndex = 0;
            lbl.Text = "Total = " + GvUpload.Rows.Count.ToString();
    
       
        SDT = SAdapter.select();
        drpstaff.DataSource = SDT;
        drpstaff.DataTextField = "Name";
        drpstaff.DataValueField = "sid";
        drpstaff.DataBind();
        drpstaff.Items.Insert(0, "SELECT");

    }
    protected void btnsearchstafff_Click(object sender, EventArgs e)
    {
       
            UDT = UAdapter.Select_By_Staff(drpstaff.SelectedItem.Text);
            GvUpload.DataSource = UDT;
            GvUpload.DataBind(); MultiView1.ActiveViewIndex = 0;
            lbl.Text = "Total = " + GvUpload.Rows.Count.ToString();
       

           
         CDT = CAdapter._select();
        drpcourse.DataSource = CDT;
        drpcourse.DataTextField = "Cname";
        drpcourse.DataValueField = "Cid";
        drpcourse.DataBind();
        drpcourse.Items.Insert(0, "SELECT");

    }
    protected void GvPDF_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect(e.CommandArgument.ToString());
    }
    protected void GvUpload_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect(e.CommandArgument.ToString());
    }
}