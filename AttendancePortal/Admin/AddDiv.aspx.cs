using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddDiv : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            StdDT = StdAdapter.SelectStd();
            drpstd.DataSource = StdDT;
            drpstd.DataTextField = "STDName";
            drpstd.DataValueField = "SID";
            drpstd.DataBind();
            BindGridiv();
            drpstd.Items.Insert(0, "SELECT");
        }
    }
    private void BindGridiv()
    {

        DivDT = DivAdapter.SelectDiv();
        GvDiv.DataSource = DivDT;
        GvDiv.DataBind();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        DivAdapter.Insert(txtdname.Text,drpstd.SelectedItem.Text,Convert.ToInt32(txtseat.Text));
        lbl.Text="Record Added Successfully";
        drpstd.SelectedIndex = 0;
        BindGridiv();
        txtdname.Text = "";
        txtseat.Text = "";
    }
    protected void GvDiv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DivAdapter.Delete(Convert.ToInt32(GvDiv.DataKeys[e.RowIndex].Value));
        lbl.Text = "Record Deleted Successfully";
        BindGridiv();
    }
    protected void GvDiv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GvDiv.EditIndex = e.NewEditIndex;
        BindGridiv();

    }
    protected void GvDiv_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox tname = GvDiv.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;
        TextBox tsname = GvDiv.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
              TextBox tseat = GvDiv.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;

        DivAdapter.Update(Convert.ToInt32(GvDiv.DataKeys[e.RowIndex].Value),tname.Text,tsname.Text,Convert.ToInt32( tseat.Text));
           lbl.Text = "Record Updated Successfully";
        GvDiv.EditIndex = -1;
        BindGridiv();
    }
    protected void GvDiv_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GvDiv.EditIndex = -1;
        BindGridiv();
    }
}