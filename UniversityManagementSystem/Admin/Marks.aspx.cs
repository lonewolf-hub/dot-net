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
    public partial class Marks : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)

            {
                GetCourse();
                GetMarks();
            }
        }

        private void GetMarks()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No] , e.ExamId, e.CourseId, c.CourseName, e.SubjectId, s.SubjectName, e.RollNo, e.TotalMarks,e.OutOfMarks from Exam e
                                               inner join Course c on e.CourseId = c.CourseId 
                                               inner join Subject s on e.SubjectId = s.SubjectId");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void GetCourse()
        {
            DataTable dt = fn.Fetch("Select * from Course");
            ddlCourse.DataSource = dt;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "CourseId";
            ddlCourse.DataBind();
            ddlCourse.Items.Insert(0, "Select Course");
        }

        protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {

        string courseId = ddlCourse.SelectedValue;
                    DataTable dt = fn.Fetch("Select * from Subject where CourseId = '" + courseId + "' ");
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

                string rollNo = txtRoll.Text.Trim();
                string studMarks = txtStudMarks.Text.Trim();
                string outOfMarks = txtOutOfMarks.Text.Trim();
                DataTable dttbl = fn.Fetch("Select StudentId from Student Where CourseId = '" + courseId + "' and RollNo= '" + rollNo + "'");
                if (dttbl.Rows.Count > 0)
                {
                    DataTable dt = fn.Fetch("Select * from Exam Where CourseId = '" + courseId + "' and  SubjectId= '" + subjectId + "'  and RollNo = '" + rollNo + "' ");
                    if (dt.Rows.Count == 0)

                    {
                        string query = "Insert into Exam Values('" + courseId + "', '" + subjectId + "', '" + rollNo + "','" + studMarks + "','" + outOfMarks + "')";
                        fn.Query(query);
                        lblmsg.Text = "Inserted Succesfully!";
                        lblmsg.CssClass = "alert alert-success";
                        ddlCourse.SelectedIndex = 0;
                        ddlSubject.SelectedIndex = 0;
                        txtStudMarks.Text = string.Empty;
                        txtRoll.Text = string.Empty;
                        txtOutOfMarks.Text = string.Empty;
                        GetMarks();
                    }
                    else
                    {
                        lblmsg.Text = "Entered <b>  Data </b> Already Exists !";
                        lblmsg.CssClass = "alert alert-danger";
                    }
                }
                else
                {
                    lblmsg.Text = "Entered RollNo<b>  "+rollNo+" </b> doesn't Exists for Selected Course !";
                    lblmsg.CssClass = "alert alert-danger";
                }


            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }
        
    }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetMarks();
        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int examId= Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string courseId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlCourseGv")).SelectedValue;
                string subjectId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlSubjectGv")).SelectedValue;
                string rollNo = (row.FindControl("txtRollGv") as TextBox).Text.Trim();
                string studMarks = (row.FindControl("txtStudMarksGv") as TextBox).Text.Trim();
                string outOfMarks = (row.FindControl("txtOutOfMarksGv") as TextBox).Text.Trim();

                fn.Query(@"Update Exam set CourseId = '" + courseId + "' , SubjectId = '" + subjectId + "', RollNo = '" + rollNo + "', TotalMarks = '" + studMarks + "', OutOfMarks = '" + outOfMarks + "' where ExamId = '" + examId + "' ");
                lblmsg.Text = "Record Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetMarks();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetMarks();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int examId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                fn.Query("Delete from Exam where ExamId = '" + examId + "'");
                lblmsg.Text = "Marks  Deleted Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetMarks();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
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
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetMarks();
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

    }
}