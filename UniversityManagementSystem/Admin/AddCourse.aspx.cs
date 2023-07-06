using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static UniversityManagementSystem.Models.CommonFn;


namespace UniversityManagementSystem.Admin
{
    public partial class AddCourse : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourse();
            }

        }

        private void GetCourse()
        {
            DataTable dt = fn.Fetch("Select Row_Number() over(Order by (Select 1)) as [Sr.No], CourseId, CourseName from Course");
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btnAdd_Click1(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = fn.Fetch("Select * from Course Where CourseName = '" + txtCourse.Text.Trim() + "' ");
                if (dt.Rows.Count == 0)

                {
                    string query = "Insert into Course Values('" + txtCourse.Text.Trim() + "')";
                    fn.Query(query);
                    lblmsg.Text = "Course Inserted Succesfully!";
                    lblmsg.CssClass = "alert alert-success";
                    txtCourse.Text = string.Empty;
                    GetCourse();
                }
                else
                {
                    lblmsg.Text = "Entered Course Already Exists!";
                    lblmsg.CssClass = "alert alert-danger";
                }


            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "' ");
            }

        }

      

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetCourse();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetCourse();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex; 
            GetCourse();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string CourseName = (row.FindControl("txtCourseedit") as TextBox).Text;
                fn.Query("Update Course set CourseName = '" + CourseName + "' Where CourseId = '" + cId + "' ");
                lblmsg.Text = "Course Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetCourse() ;
            }
            catch(Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "' ");

            }
        }
    }
}