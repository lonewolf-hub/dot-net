using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Message : System.Web.UI.Page
{
    DS_LEAVE.Leavemst_SELECTDataTable LeaveDT = new DS_LEAVE.Leavemst_SELECTDataTable();
    DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter LeaveAdapter = new DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter();
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //MultiView1.ActiveViewIndex = 0;
            //LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(drpstd.SelectedItem.Text, "Pending");

            //GridView1.DataSource = LeaveDT;
            //GridView1.DataBind();
            //lblnew.Text = GridView1.Rows.Count.ToString();

            StdDT = StdAdapter.SelectStd();
            drpstd.DataSource = StdDT;
            drpstd.DataTextField = "STDName";
            drpstd.DataValueField = "SID";
            drpstd.DataBind();          
            drpstd.Items.Insert(0, "SELECT");
        }
    }
    protected void btnnewleave_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(drpstd.SelectedItem.Text, "Pending");

        GridView1.DataSource = LeaveDT;
        GridView1.DataBind();
        lblnew.Text = GridView1.Rows.Count.ToString();
    }
    protected void btnapprove_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(drpstd.SelectedItem.Text, "Approve");

        GridView2.DataSource = LeaveDT;
        GridView2.DataBind();
        lblapp.Text = GridView2.Rows.Count.ToString();

    }
    protected void btnreject_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(drpstd.SelectedItem.Text, "Reject");

        GridView3.DataSource = LeaveDT;
        GridView3.DataBind();
        lblrej.Text = GridView3.Rows.Count.ToString();
    }
}