using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddCategory : System.Web.UI.Page
{

    DS_CATE.catemst_SELECTDataTable CDT = new DS_CATE.catemst_SELECTDataTable();
    DS_CATETableAdapters.catemst_SELECTTableAdapter CAdapter = new DS_CATETableAdapters.catemst_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter._select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
        }

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        CAdapter.Insert(txtadd.Text);


       CDT= CAdapter._select();
       GridView1.DataSource = CDT;
       GridView1.DataBind();

       txtadd.Text = "";
       txtadd.Focus();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
       int cidd=Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        CAdapter.Delete(cidd);

        CDT = CAdapter._select();
        GridView1.DataSource = CDT;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}