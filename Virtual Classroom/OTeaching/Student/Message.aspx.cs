using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Message : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();
    DS_MSG.MSGMST_SELECTDataTable MDT = new DS_MSG.MSGMST_SELECTDataTable();
    DS_MSGTableAdapters.MSGMST_SELECTTableAdapter MAdapter = new DS_MSGTableAdapters.MSGMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
       // lblsub.Text = "";
        MultiView1.ActiveViewIndex = 0;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView2.DataSource = MDT;
        GridView2.DataBind();
        lblnew.Text = GridView2.Rows.Count.ToString();
    }
    protected void btnappluleave_Click(object sender, EventArgs e)
    {
        

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView2.DataSource = MDT;
        GridView2.DataBind();

        lblnew.Text = GridView2.Rows.Count.ToString();

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView3.DataSource = MDT;
        GridView3.DataBind();
        lblold.Text = GridView3.Rows.Count.ToString();
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      //  MAdapter.MSGMST_Update_Status(1, Convert.ToInt32(e.CommandArgument.ToString()));
        MultiView1.ActiveViewIndex = 2;
        MDT = MAdapter.Select_By_ID(Convert.ToInt32(e.CommandArgument.ToString()));
        lblfname.Text = MDT.Rows[0]["Fname"].ToString();
        lblsub.Text = MDT.Rows[0]["subject"].ToString();
        lblmsg.Text = MDT.Rows[0]["message"].ToString();
    }
    protected void btnreply_Click(object sender, EventArgs e)
    {
        MAdapter.Insert(Session["email"].ToString(), lblfname.Text, lblsub.Text, txtreply.Text);
        lblsub.Text = "Reply Successfully";
        txtreply.Text = "";
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        MAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
        MultiView1.ActiveViewIndex = 1;
        MDT = MAdapter.Select_Status_TName(Session["email"].ToString(), 0);
        GridView3.DataSource = MDT;
        GridView3.DataBind();
        lblold.Text = GridView3.Rows.Count.ToString();
    }
    protected void btnsendmsg_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        MAdapter.Insert(Session["email"].ToString(), drpstaff.SelectedItem.Text, txtsubmsg.Text, txtmsgmsg.Text);
        lblsendmsg.Text = "Message Send";
        txtmsgmsg.Text = "";
        txtsubmsg.Text = "";
        drpstaff.SelectedIndex=0;

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;

      //  SDT = SAdapter.Select_By_Course(Session["cname"].ToString());

       // drpstaff.DataSource = SDT;
       // drpstaff.DataTextField = "Email";
       // drpstaff.DataValueField = "SID";
       // drpstaff.DataBind();



    }
    protected void GridView2_RowCommand1(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView3_RowCommand1(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void btnreply_Click1(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}