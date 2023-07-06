using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddStd : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            BindGridStd();
        }
    }
   
    protected void btnaddstd_Click(object sender, EventArgs e)
    {
        StdAdapter.Insert(txtstdname.Text);
        lbl.Text = "Standered Added Successfully.";
        BindGridStd();
        txtstdname.Text = "";
    }

    private void BindGridStd()
    {
        StdDT = StdAdapter.SelectStd();
        GvStd.DataSource = StdDT;
        GvStd.DataBind();
    
    }
    protected void GvStd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        StdAdapter.Delete(Convert.ToInt32(GvStd.DataKeys[e.RowIndex].Value));
        lbl.Text = "Recoed Deleted Successfully.";
        BindGridStd();

    }
    protected void GvStd_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GvStd.EditIndex = e.NewEditIndex;
        BindGridStd();

    }
  
    protected void GvStd_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GvStd.EditIndex = -1;
        BindGridStd();
    }
    protected void GvStd_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox tname = GvStd.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;

        StdAdapter.Update(Convert.ToInt32(GvStd.DataKeys[e.RowIndex].Value), tname.Text);
        lbl.Text = "Record Updated Successfully";
        GvStd.EditIndex = -1;
        BindGridStd();

    }
}