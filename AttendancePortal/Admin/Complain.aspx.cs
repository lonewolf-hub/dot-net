using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Complain : System.Web.UI.Page
{
    DS_COMPLAIN.Complainmst_SELECTDataTable CompDT = new DS_COMPLAIN.Complainmst_SELECTDataTable();
    DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter CompAdapter = new DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            CompDT = CompAdapter.SelectCompalin();
            GridView1.DataSource = CompDT;
            GridView1.DataBind();

            lblcomplain.Text = GridView1.Rows.Count.ToString();
        }
    }
}