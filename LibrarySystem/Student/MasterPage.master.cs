using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    DS_STUDENT.STUDENT_SELECTDataTable SDT = new DS_STUDENT.STUDENT_SELECTDataTable();
    DS_STUDENTTableAdapters.STUDENT_SELECTTableAdapter SAdapter = new DS_STUDENTTableAdapters.STUDENT_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sid"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        SDT = SAdapter.Select_By_SID(Convert.ToInt32(Session["sid"].ToString()));
        Image2.ImageUrl = SDT.Rows[0]["image"].ToString();
        lblname.Text = SDT.Rows[0]["studentname"].ToString();

    }
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["sid"] = null;
        Response.Redirect("../Default.aspx");
    }
}
