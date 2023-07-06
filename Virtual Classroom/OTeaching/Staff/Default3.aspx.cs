using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Staff_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button15_Click(object sender, EventArgs e)
    {

    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        SqlDataAdapter da = new SqlDataAdapter("Select * from " + DropDownList1.SelectedItem.Text + "AttMst Where class='"+ DropDownList2.SelectedItem.Text+ "' and dateofclasss='"+ TextBox2.Text +"'", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();
    }

    protected void Button2_Clicked(object sender, EventArgs e)
    {

    }
}