using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserReport : System.Web.UI.Page
{
    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            StuDT = StuAdapter.Select();
            GridView1.DataSource = StuDT;
            GridView1.DataBind();
            lbl.Text = GridView1.Rows.Count.ToString();
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        StuAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
        StuDT = StuAdapter.Select();
        GridView1.DataSource = StuDT;
        GridView1.DataBind();
        lbl.Text = GridView1.Rows.Count.ToString();
    }
}