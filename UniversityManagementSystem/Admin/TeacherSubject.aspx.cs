using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static UniversityManagementSystem.Models.CommonFn;

namespace UniversityManagementSystem.Admin
{
    public partial class TeacherSubject : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCourse();
                GetTeacher();
                GetTeacherSubject();

            }
        }


        private void GetCourse()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No], * from Course");
            ddlCourse.DataSource = dt;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "CourseId";
            ddlCourse.DataBind();
            ddlCourse.Items.Insert(0, "Select Course");
        }
 

        private void GetTeacher()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No], * from Teacher");
            ddlTeacher.DataSource = dt;
            ddlTeacher.DataTextField = "Name";
            ddlTeacher.DataValueField = "TeacherId";
            ddlTeacher.DataBind();
            ddlTeacher.Items.Insert(0, "Select Teacher");
        }

        private void GetTeacherSubject()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No] , ts.Id, ts.CourseId, c.CourseName,ts.SubjectId,s.SubjectName, ts.TeacherId, t.Name from TeacherSubject ts inner join Course c on ts.CourseId = c.CourseId inner join Subject s on ts.SubjectId = s.SubjectId 
                  inner join Teacher t on ts.TeacherId = t.TeacherId");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            string courseId = ddlCourse.SelectedValue;
            DataTable dt = fn.Fetch("Select * from Subject where CourseId = '" +courseId +"'");
            ddlSubject.DataSource = dt;
            ddlSubject.DataTextField = "SubjectName";
            ddlSubject.DataValueField = "SubjectId";
            ddlSubject.DataBind();
            ddlSubject.Items.Insert(0, "Select Subject");

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string courseId = ddlCourse.SelectedValue;
                    
                string subjectId = ddlSubject.SelectedValue;

                string teacherId = ddlTeacher.SelectedValue;

                DataTable dt = fn.Fetch("Select * from TeacherSubject Where CourseId = '" + courseId + "' and  SubjectId= '" + subjectId + "'  and TeacherId = '"+ teacherId +"' ");
                if (dt.Rows.Count == 0)

                {
                    string query = "Insert into TeacherSubject Values('" + courseId + "', '" + subjectId + "', '"+ teacherId+"')";
                    fn.Query(query);
                    lblmsg.Text = "Inserted Succesfully!";
                    lblmsg.CssClass = "alert alert-success";
                    ddlCourse.SelectedIndex = 0;
                    ddlSubject.SelectedIndex = 0;
                    ddlTeacher.SelectedIndex = 0;
                    GetTeacherSubject();
                }
                else
                {
                    lblmsg.Text = "Entered <b> Teacher Subject </b> Already Exists !";
                    lblmsg.CssClass = "alert alert-danger";
                }
            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetTeacherSubject();
        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
        GetTeacherSubject() ;
        }

    

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int teacherSubjectId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string courseId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlCourseGv")).SelectedValue;
                string subjectId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlSubjectGv")).SelectedValue;
                string teacherId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlTeacherGv")).SelectedValue;

                fn.Query(@"Update TeacherSubject set CourseId = '" + courseId + "' , SubjectId = '" + subjectId + "' ,TeacherId = '" + teacherId + "' " +
                    " where Id = '"+ teacherSubjectId+"' ");
                lblmsg.Text = "Record Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetTeacherSubject();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetTeacherSubject();

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int teacherSubjectId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                fn.Query("Delete from TeacherSubject where Id = '" + teacherSubjectId + "'");
                lblmsg.Text = "Teacher Subject Deleted Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetTeacherSubject();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void ddlCourseGv_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddlCourseSelected = (DropDownList)sender;
            GridViewRow row = (GridViewRow)ddlCourseSelected.NamingContainer;
            if (row != null)
            {

                if ((row.RowState & DataControlRowState.Edit) > 0)
                {
                    DropDownList ddlSubjectGV = (DropDownList)row.FindControl("ddlSubjectGv");
                    DataTable dt = fn.Fetch("Select * from Subject where CourseId = '" + ddlCourseSelected.SelectedValue + "' ");
                    ddlSubjectGV.DataSource = dt;
                    ddlSubjectGV.DataTextField = "SubjectName";
                    ddlSubjectGV.DataValueField = "SubjectId";
                    ddlSubjectGV.DataBind();
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
                if((e.Row.RowState & DataControlRowState.Edit)> 0) 
                {

                    DropDownList ddlCourse = (DropDownList)e.Row.FindControl("ddlCourseGv");
                    DropDownList ddlSubject = (DropDownList)e.Row.FindControl("ddlSubjectGv");
                    DataTable dt = fn.Fetch("Select * from Subject Where CourseId = '" + ddlCourse.SelectedValue + "' ");
                    ddlSubject.DataSource = dt;
                    ddlSubject.DataTextField = "SubjectName";
                    ddlSubject.DataValueField = "SubjectId";
                    ddlSubject.DataBind();
                    ddlSubject.Items.Insert(0, "Select Subject");
                    string selectedSubject = DataBinder.Eval(e.Row.DataItem, "SubjectName").ToString();
                    ddlSubject.Items.FindByText(selectedSubject).Selected = true;
                }
        }
    }
    }
