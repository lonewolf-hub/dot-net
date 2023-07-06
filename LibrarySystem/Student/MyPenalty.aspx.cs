using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyPanalty : System.Web.UI.Page
{
    DS_PANALTY.PENALTY_SELECTDataTable PDT = new DS_PANALTY.PENALTY_SELECTDataTable();
    DS_PANALTYTableAdapters.PENALTY_SELECTTableAdapter PAdapter = new DS_PANALTYTableAdapters.PENALTY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        PDT = PAdapter.Select_By_SID(Convert.ToInt32(Session["sid"].ToString()));
        GridView3.DataSource = PDT;
        GridView3.DataBind();

    }
}