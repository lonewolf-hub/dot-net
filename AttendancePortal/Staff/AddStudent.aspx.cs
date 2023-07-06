using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_AddStudent : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();


    DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StaffDT=StaffAdapter.Select_UNAME(Session["uname"].ToString());            
            //StdDT = StdAdapter.SelectStd();
            //drpstd.DataSource = StdDT;
            //drpstd.DataTextField = "STDName";
            //drpstd.DataValueField = "SID";
            //drpstd.DataBind();           
          //  drpstd.Items.Insert(0, "SELECT");
         lblstd.Text=StaffDT.Rows[0]["StdName"].ToString();

         DivDT = DivAdapter.Select_By_STD(StaffDT.Rows[0]["StdName"].ToString());
            drpdiv.DataSource = DivDT;
            drpdiv.DataTextField = "DivName";
            drpdiv.DataValueField = "DID";
            drpdiv.DataBind();
            drpdiv.Items.Insert(0, "SELECT");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        DivDT = DivAdapter.SELECT_BY_ID(Convert.ToInt32(drpdiv.SelectedValue));
        lblcnt.Text = "Total Seat = " + DivDT.Rows[0]["Seat"].ToString();                
        MultiView1.ActiveViewIndex = 0;

        StuDT = StuAdapter.Select_By_STD_DIV(lblstd.Text, drpdiv.SelectedItem.Text);
        int rstu=Convert.ToInt32(DivDT.Rows[0]["Seat"].ToString()) - Convert.ToInt32(StuDT.Rows.Count.ToString());
        lblstudent.Text = "Total Admitted =" + StuDT.Rows.Count.ToString() + " , Remaining Student = " + rstu;

        string stddd=lblstd.Text.Substring(0,1);
        int rno=Convert.ToInt32(StuDT.Rows.Count.ToString()) +1;
        if (rno.ToString().Length < 2)
        {
            string newrno = "0" + rno.ToString();
            txtroll.Text = stddd + drpdiv.SelectedItem.Text + newrno;
        }
        else
        {
            txtroll.Text = stddd + drpdiv.SelectedItem.Text + rno;
        }
    }
   
    protected void btnstuadd_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Studentimg/" + FileUpload1.FileName));
            DateTime bdate = Convert.ToDateTime(drpdd.SelectedItem.Text + " " + drpmm.SelectedItem.Text + " " + drpyyyy.SelectedItem.Text);

            StuAdapter.Insert(txtroll.Text, txtname.Text, lblstd.Text, drpdiv.SelectedItem.Text, txtemail.Text, txtmobi.Text, bdate.GetDateTimeFormats()[8].ToString(), "~/Studentimg/" + FileUpload1.FileName, txtadd.Text, txtcity.Text, txtpin.Text, txtuname.Text, txtpass.Text);
            lblmsg.Text = "Student Added.";
            txtname.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtemail.Text = "";
            txtmobi.Text = ""; txtpass.Text = "";
            txtpin.Text = "";
            txtuname.Text = "";
            txtcpass.Text = "";
            drpdd.SelectedIndex = 0;
            drpmm.SelectedIndex = 0;
            drpyyyy.SelectedIndex = 0;


            DivDT = DivAdapter.SELECT_BY_ID(Convert.ToInt32(drpdiv.SelectedValue));
            lblcnt.Text = "Total Seat = " + DivDT.Rows[0]["Seat"].ToString();
            MultiView1.ActiveViewIndex = 0;

            StuDT = StuAdapter.Select_By_STD_DIV(lblstd.Text, drpdiv.SelectedItem.Text);
            int rstu = Convert.ToInt32(DivDT.Rows[0]["Seat"].ToString()) - Convert.ToInt32(StuDT.Rows.Count.ToString());
            lblstudent.Text = "Total Admitted =" + StuDT.Rows.Count.ToString() + " , Remaining Student = " + rstu;

            string stddd = lblstd.Text.Substring(0, 1);
            int rno = Convert.ToInt32(StuDT.Rows.Count.ToString()) + 1;
            if (rno.ToString().Length < 2)
            {
                string newrno = "0" + rno.ToString();
                txtroll.Text = stddd + drpdiv.SelectedItem.Text + newrno;
            }
            else
            {
                txtroll.Text = stddd + drpdiv.SelectedItem.Text + rno;
            }
        }
    }
}