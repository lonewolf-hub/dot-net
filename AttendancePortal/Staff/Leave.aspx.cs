using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Leave : System.Web.UI.Page
{
    DS_LEAVE.Leavemst_SELECTDataTable LeaveDT = new DS_LEAVE.Leavemst_SELECTDataTable();
    DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter LeaveAdapter = new DS_LEAVETableAdapters.Leavemst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            MultiView1.ActiveViewIndex = 0;
            LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(), "Pending");

            GridView1.DataSource = LeaveDT;
            GridView1.DataBind();
            lblnew.Text = GridView1.Rows.Count.ToString();
        }
    }
    protected void btnnewleave_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(), "Pending");

        GridView1.DataSource = LeaveDT;
        GridView1.DataBind();
        lblnew.Text = GridView1.Rows.Count.ToString();
    }
    protected void btnapprove_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(),"Approve");

        GridView2.DataSource = LeaveDT;
        GridView2.DataBind();
        lblapp.Text = GridView2.Rows.Count.ToString();
    }
    protected void btnreject_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(),"Reject");

        GridView3.DataSource = LeaveDT;
        GridView3.DataBind();
        lblrej.Text = GridView3.Rows.Count.ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {

            LeaveAdapter.LeaveMst_UPDATE_STATU(Convert.ToInt32(e.CommandArgument.ToString()), "Approve");
            MultiView1.ActiveViewIndex = 0;
            LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(), "Pending");

            GridView1.DataSource = LeaveDT;
            GridView1.DataBind();
            lblnew.Text = GridView1.Rows.Count.ToString();
        }
        else
        { 
        
        }

    }
    protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    {

       
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Reject")
        {
            LeaveAdapter.LeaveMst_UPDATE_STATU(Convert.ToInt32(e.CommandArgument.ToString()), "Reject");
            MultiView1.ActiveViewIndex = 1;
            LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(), "Approve");

            GridView2.DataSource = LeaveDT;
            GridView2.DataBind();
            lblapp.Text = GridView2.Rows.Count.ToString();
        }
        
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Approve")
        {
            LeaveAdapter.LeaveMst_UPDATE_STATU(Convert.ToInt32(e.CommandArgument.ToString()), "Approve");
            MultiView1.ActiveViewIndex = 2;
            LeaveDT = LeaveAdapter.Select_By_STD_and_STATUS(Session["std"].ToString(), "Reject");

            GridView3.DataSource = LeaveDT;
            GridView3.DataBind();
            lblrej.Text = GridView3.Rows.Count.ToString();
        }
       
    }
}