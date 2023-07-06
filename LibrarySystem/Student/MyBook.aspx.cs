using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyBook : System.Web.UI.Page
{
    DS_RENT.RENT_SELECTDataTable RDT = new DS_RENT.RENT_SELECTDataTable();
    DS_RENTTableAdapters.RENT_SELECTTableAdapter RAdapter = new DS_RENTTableAdapters.RENT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btntaken_Click(object sender, EventArgs e)
    {
        RDT = RAdapter.Select_by_Status_and_SID(Convert.ToInt32(Session["sid"].ToString()), 0);
        GridView1.DataSource = RDT;
        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 0;
        lblb.Text = GridView1.Rows.Count.ToString();
    }
    protected void btnreturn_Click(object sender, EventArgs e)
    {
        RDT = RAdapter.Select_by_Status_and_SID(Convert.ToInt32(Session["sid"].ToString()), 1);
        GridView2.DataSource = RDT;
        GridView2.DataBind();
        MultiView1.ActiveViewIndex=1;
        lblr.Text = GridView2.Rows.Count.ToString();
    }
}