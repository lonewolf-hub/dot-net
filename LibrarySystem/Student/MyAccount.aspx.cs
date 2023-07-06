using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyAccount : System.Web.UI.Page
{
    DS_STUDENT.STUDENT_SELECTDataTable SDT = new DS_STUDENT.STUDENT_SELECTDataTable();
    DS_STUDENTTableAdapters.STUDENT_SELECTTableAdapter SAdapter = new DS_STUDENTTableAdapters.STUDENT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        MultiView1.ActiveViewIndex = 0;
        SDT = SAdapter.Select_By_SID(Convert.ToInt32(Session["sid"].ToString()));
        lblnam.Text = SDT.Rows[0]["Studentname"].ToString();
        lblmobile.Text = SDT.Rows[0]["mobile"].ToString();
        lbladd.Text = SDT.Rows[0]["address"].ToString();
        lblcity.Text = SDT.Rows[0]["city"].ToString();
        lblpincode.Text = SDT.Rows[0]["pincode"].ToString();
        lblemail.Text = SDT.Rows[0]["email"].ToString();

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        SDT = SAdapter.Select_By_SID(Convert.ToInt32(Session["sid"].ToString()));
        lblnam.Text = SDT.Rows[0]["Studentname"].ToString();
        lblmobile.Text = SDT.Rows[0]["mobile"].ToString();
        lbladd.Text = SDT.Rows[0]["address"].ToString();
        lblcity.Text = SDT.Rows[0]["city"].ToString();
        lblpincode.Text = SDT.Rows[0]["pincode"].ToString();
        lblemail.Text = SDT.Rows[0]["email"].ToString();

    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        SDT = SAdapter.Select_By_SID(Convert.ToInt32(Session["sid"].ToString()));
        txtname.Text = SDT.Rows[0]["Studentname"].ToString();
        txtname0.Text = SDT.Rows[0]["mobile"].ToString();
        txtname1.Text = SDT.Rows[0]["address"].ToString();
        txtname2.Text = SDT.Rows[0]["city"].ToString();
        txtname3.Text = SDT.Rows[0]["pincode"].ToString();
        txtname4.Text = SDT.Rows[0]["email"].ToString();

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SAdapter.Update(Convert.ToInt32( Session["sid"].ToString()), txtname.Text, txtname4.Text, txtname0.Text, txtname1.Text, txtname2.Text, txtname3.Text);
        MultiView1.ActiveViewIndex = 0; 
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        if (txtpass.Text == "")
        {
            Label1.Text = "Enter Password";
        }
        else if (txtpass.Text != txtcpass.Text)
        {
            Label1.Text = "Password not same !!";
        }
        else
        {
            SAdapter.STUDENT_change_password(Convert.ToInt32(Session["sid"].ToString()), txtpass.Text);
            Label1.Text = "Password has been changed !!";
            

        } MultiView1.ActiveViewIndex = 2;
    }
}