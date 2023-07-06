using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        SqlDataAdapter da = new SqlDataAdapter("Select * from NotMst ", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();


        MultiView1.ActiveViewIndex = 0;


        lblnew.Text = GridView2.Rows.Count.ToString();
    


    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // MAdapter.MSGMST_Update_Status(1, Convert.ToInt32(e.CommandArgument.ToString()));
        MultiView1.ActiveViewIndex = 1;
        string OTeachingConnectionString2 = ConfigurationManager.ConnectionStrings["OTeachingConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(OTeachingConnectionString2);
        SqlDataAdapter da = new SqlDataAdapter("Select * from NotMst Where title='"+ e.CommandArgument.ToString() + "'", con);
       // lblnew0.Text = e.CommandArgument.ToString();
        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();

    }

}