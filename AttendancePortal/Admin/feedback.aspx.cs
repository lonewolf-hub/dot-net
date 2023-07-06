using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_feedback : System.Web.UI.Page
{
    DS_FEED.FeedBackMst_SELECTDataTable FeedDT = new DS_FEED.FeedBackMst_SELECTDataTable();
    DS_FEEDTableAdapters.FeedBackMst_SELECTTableAdapter FeedAdapter = new DS_FEEDTableAdapters.FeedBackMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            FeedDT = FeedAdapter.Selectt();
            GvFeed.DataSource = FeedDT;
            GvFeed.DataBind();
            lbl.Text = "Total Record = " + GvFeed.Rows.Count.ToString();
        }
    }
    protected void GvFeed_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FeedAdapter.Delete(Convert.ToInt32(GvFeed.DataKeys[e.RowIndex].Value));
        FeedDT = FeedAdapter.Selectt();
        GvFeed.DataSource = FeedDT;
        GvFeed.DataBind();
        lbl.Text = "Total Record = " + GvFeed.Rows.Count.ToString();
    }
}