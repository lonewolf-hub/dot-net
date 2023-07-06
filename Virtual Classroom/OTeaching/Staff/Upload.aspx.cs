using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Upload : System.Web.UI.Page
{
    DS_UPLOAD.UPLOADMST_SELECTDataTable UDT = new DS_UPLOAD.UPLOADMST_SELECTDataTable();
    DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter UADapter = new DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        lblsave.Text = "";
        if (Page.IsPostBack == false)
        {
            UDT = UADapter.Select_By_Staff(Session["name"].ToString());
            GridView4.DataSource = UDT;
            GridView4.DataBind();
            lbl.Text = "Total = " + GridView4.Rows.Count.ToString();
        }

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Staff/Upload/") + FileUpload1.FileName);
            UADapter.Insert(Session["name"].ToString(), txtcourse.Text , txttitle.Text, "~/Staff/Upload/" + FileUpload1.FileName);
            lblsave.Text = "File Uploaded";
            txttitle.Text = "";

            UDT = UADapter.Select_By_Staff(Session["name"].ToString());
            GridView4.DataSource = UDT;
            GridView4.DataBind();
            lbl.Text = "Total = " + GridView4.Rows.Count.ToString();
        }
        else
        {
            lblsave.Text = "Please, Select File.";
        }
    }
    protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        UADapter.Delete(Convert.ToInt32(GridView4.DataKeys[e.RowIndex].Value));
        UDT = UADapter.Select();
        GridView4.DataSource = UDT;
        GridView4.DataBind();
        lbl.Text = "Total = " + GridView4.Rows.Count.ToString();
    }
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "a")
        {
            UDT = UADapter.Select_By_UID(Convert.ToInt32(e.CommandArgument.ToString()));

            if (UDT.Rows[0]["Status"].ToString() == "Active")
            {
                UADapter.UPLOADMST_UPDATE_Status(Convert.ToInt32(e.CommandArgument.ToString()), "InActive");

            }
            else
            {
                UADapter.UPLOADMST_UPDATE_Status(Convert.ToInt32(e.CommandArgument.ToString()), "Active");
            }
            UDT = UADapter.Select();
            GridView4.DataSource = UDT;
            GridView4.DataBind();
            lbl.Text = "Total = " + GridView4.Rows.Count.ToString();
        }
    }
}