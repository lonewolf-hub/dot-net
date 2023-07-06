using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyProfile : System.Web.UI.Page
{
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());

            lblname.Text = StuDT.Rows[0]["Name"].ToString();
            lblroll.Text = StuDT.Rows[0]["rollno"].ToString();

            txtemail.Text = StuDT.Rows[0]["email"].ToString();
            txtmobile.Text = StuDT.Rows[0]["mobile"].ToString();
            txtadd.Text = StuDT.Rows[0]["add"].ToString();
            txtcity.Text = StuDT.Rows[0]["city"].ToString();
            txtpin.Text = StuDT.Rows[0]["pincode"].ToString();
            Imgprofile.ImageUrl = StuDT.Rows[0]["image"].ToString();
            ViewState["sid"] = StuDT.Rows[0]["SID"].ToString();

        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
            StuAdapter.Update(Convert.ToInt32(ViewState["sid"].ToString()), txtemail.Text, txtmobile.Text, Imgprofile.ImageUrl.ToString(), txtadd.Text, txtcity.Text, txtpin.Text);
        
        


    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/Studentimg/" + FileUpload1.FileName));
        Imgprofile.ImageUrl = "~/Studentimg/" + FileUpload1.FileName.ToString();


    }
}