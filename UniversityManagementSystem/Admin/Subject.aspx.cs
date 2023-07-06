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
    public partial class Subject : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourse();
                GetSubject();
            }
        }

        private void GetCourse()
        {
            DataTable dt = fn.Fetch(@"Select * from Course");
            ddlCourse.DataSource = dt;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "CourseId";
            ddlCourse.DataBind();
            ddlCourse.Items.Insert(0, "Select Course");
        }

        protected void btnAdd_Click1(object sender, EventArgs e)
        {

            try
            {
                string courseVal = ddlCourse.SelectedItem.Text;
                DataTable dt = fn.Fetch("Select * from Subject Where CourseId = '" + ddlCourse.SelectedItem.Value + "' and  SubjectName = '" + txtSubject.Text.Trim() + "' ");
                if (dt.Rows.Count == 0)

                {
                    string query = "Insert into Subject Values('" + ddlCourse.SelectedItem.Value + "', '" + txtSubject.Text.Trim() + "')";
                    fn.Query(query);
                    lblmsg.Text = "Inserted Succesfully!";
                    lblmsg.CssClass = "alert alert-success";
                    ddlCourse.SelectedIndex = 0;
                    txtSubject.Text = string.Empty;
                    GetSubject();
                }
                else
                {
                    lblmsg.Text = "Entered Subject Already Exists For <b>'" + courseVal + "'</b>!";
                    lblmsg.CssClass = "alert alert-danger";
                }
            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }


        }

        private void GetSubject()
        {
            DataTable dt = fn.Fetch(@"Select Row_NUMBER() over(Order by (Select 1)) as [Sr.No], s.SubjectId, s.CourseId, c.CourseName, s.SubjectName  from Subject s inner join Course c on c.CourseId = s.CourseId");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetSubject();
        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetSubject();
        }



        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetSubject();
        }

        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {

            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int subjId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string courseId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("DropDownList1")).SelectedValue;
                string subjName = (row.FindControl("TextBox1") as TextBox).Text;
                fn.Query("Update Subject set CourseId = '" + courseId + "' , SubjectName = '" + subjName + "' Where SubjectId = '" + subjId + "' ");
                lblmsg.Text = "Subject Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetSubject();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

    }
}