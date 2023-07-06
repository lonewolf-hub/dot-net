using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Download : System.Web.UI.Page
{
    DS_CATE.catemst_SELECTDataTable CDT = new DS_CATE.catemst_SELECTDataTable();
    DS_CATETableAdapters.catemst_SELECTTableAdapter CAdapter = new DS_CATETableAdapters.catemst_SELECTTableAdapter();

    DS_UPLOAD.UPLOADMST_SELECTDataTable UDT = new DS_UPLOAD.UPLOADMST_SELECTDataTable();
    DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter UAdapter = new DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter._select();
            drpcourse.DataSource = CDT;
            drpcourse.DataTextField = "Cname";
            drpcourse.DataValueField = "Cid";
            drpcourse.DataBind();
            drpcourse.Items.Insert(0, "SELECT");


            UDT = UAdapter.Select_Tot();
            GvUpload.DataSource = UDT;
            GvUpload.DataBind(); 
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (drpcourse.SelectedIndex != 0)
        {
            UDT = UAdapter.Select_By_Course(drpcourse.SelectedItem.Text);

            GvUpload.DataSource = UDT;
            GvUpload.DataBind(); 
        }
    }
    protected void GvUpload_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btndnload_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Select_Tot();

        GvUpload.DataSource = UDT;
        GvUpload.DataBind(); 
    }
}