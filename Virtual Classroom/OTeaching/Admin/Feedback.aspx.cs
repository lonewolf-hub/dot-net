using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Feedback : System.Web.UI.Page
{
    DS_FEED.FeedBackMst_SELECTDataTable FDT = new DS_FEED.FeedBackMst_SELECTDataTable();
    DS_FEEDTableAdapters.FeedBackMst_SELECTTableAdapter FAdapter = new DS_FEEDTableAdapters.FeedBackMst_SELECTTableAdapter();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            FDT = FAdapter.Select();
            GridView1.DataSource = FDT;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
        FDT = FAdapter.Select();
        GridView1.DataSource = FDT;
        GridView1.DataBind();
    }
}