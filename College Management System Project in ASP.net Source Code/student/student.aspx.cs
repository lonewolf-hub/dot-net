using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class student_student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["uid"] == "")
            Response.Redirect("../home.aspx");
        string s, id;
        int c = 0;
        id = System.Convert.ToString(Application["x"]);
        s = "select * from ADMISSION";
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");
        cn.Open();

        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (id == rs.GetString(0))
            {

                c = 1;
            }

        }
        cn.Close();
        if (c == 1)
        {
            LinkButton1.Visible = false;
            LinkButton5.Visible = true;
        }
        else
        {
            LinkButton1.Visible = true;
            LinkButton5.Visible = false;
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Application["sy"] = "cal";
        string s, id, dr;
        int c = 0;
        id = System.Convert.ToString(Application["x"]);
        s = "select * from ADMISSION";
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (id == rs.GetString(0))
            {

                c = 1;
            }

        }
        cn.Close();
        if (c == 1)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('Your form has been  already filled');", true);
        }
        else
        {
            Response.Redirect("../administrater/registration.aspx");
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Application["sy"] = "dat";
        Response.Redirect("detail.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedtail.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Application["x"] = "";
        Response.Redirect("../home.aspx");
    }
}