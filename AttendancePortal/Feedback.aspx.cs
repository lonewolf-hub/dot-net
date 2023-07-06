using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    DS_FEED.FeedBackMst_SELECTDataTable FeedDT = new DS_FEED.FeedBackMst_SELECTDataTable();
    DS_FEEDTableAdapters.FeedBackMst_SELECTTableAdapter FeedAdapter = new DS_FEEDTableAdapters.FeedBackMst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        FeedAdapter.Insert(txtemail.Text, txtcont.Text, txtfeed.Text);
        txtfeed.Text = "";
        txtemail.Text = "";
        txtcont.Text = "";
        lbl.Text = "Feedback Sent !!";

    }
}