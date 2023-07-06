using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_Download : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable SDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter SAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();

    DS_UPLOAD.UPLOADMST_SELECTDataTable UDT = new DS_UPLOAD.UPLOADMST_SELECTDataTable();
    DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter UAdapter = new DS_UPLOADTableAdapters.UPLOADMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
     /*   lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            SDT = SAdapter.Select_By_Course(Session["cname"].ToString());
            drpteacher.DataSource=SDT;
            drpteacher.DataTextField="Name";
            drpteacher.DataValueField="sid";
            drpteacher.DataBind();
            drpteacher.Items.Insert(0,"SELECT");
        lblcourse.Text=Session["cname"].ToString();
        lblcourse0.Text = Session["cname"].ToString();
            UDT = UAdapter.Select_By_Course(lblcourse.Text);
            GvUpload.DataSource = UDT;
            GvUpload.DataBind();
            lbl.Text = "Total = " + GvUpload.Rows.Count.ToString();
        }*/
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        //  UDT = UAdapter.Select_By_Staff(drpteacher.SelectedItem.Text);
        // GvUpload.DataSource = UDT;
        // GvUpload.DataBind();
        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        SqlDataAdapter da = new SqlDataAdapter("Select * from UploadMst Where Staff='" + drpteacher.SelectedItem.Text + "'", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        GvUpload.DataSource = ds1;
        GvUpload.DataBind();
        lbl.Text = "Total = " + GvUpload.Rows.Count.ToString();
    }
    protected void GvUpload_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        UAdapter.UPLOADMST_DOWMLOAD(Convert.ToInt32(e.CommandArgument.ToString()));

       // UDT = UAdapter.Select_By_UID(Convert.ToInt32(e.CommandArgument.ToString()));
        
        Response.Redirect(UDT.Rows[0]["Upload"].ToString());
    }

  
}