using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class administrater_adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String id, pass, id1, pass1, s;
        id = uid.Text;
        pass = upass.Text;
        s = "select * from ADMIN";
      
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            id1 = rs.GetString(0);
            pass1 = rs.GetString(1);
            if (id == id1 && pass == pass1)
            {
                Application["aid"] = "admin";
                Response.Redirect("administrater.aspx");
            }
            else
            {
                Label3.Visible = true;

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        uid.Text = "";
        upass.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../home.aspx");
    }
}