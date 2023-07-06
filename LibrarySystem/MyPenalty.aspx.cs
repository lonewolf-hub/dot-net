using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyPanalty : System.Web.UI.Page
{
    DS_PANALTY.PENALTY_SELECT_ReportsDataTable PDT = new DS_PANALTY.PENALTY_SELECT_ReportsDataTable();
    DS_PANALTYTableAdapters.PENALTY_SELECT_ReportsTableAdapter PAdapter = new  DS_PANALTYTableAdapters.PENALTY_SELECT_ReportsTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        PDT = PAdapter.Seelct_Reports();
        GridView3.DataSource = PDT;
        GridView3.DataBind();

    }
}