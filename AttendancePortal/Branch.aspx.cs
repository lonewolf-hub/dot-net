using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Branch : System.Web.UI.Page
{
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        DivDT = DivAdapter.SelectDiv();
        GridView1.DataSource = DivDT;
        GridView1.DataBind();
        lblstd.Text = GridView1.Rows.Count.ToString();

    }
}