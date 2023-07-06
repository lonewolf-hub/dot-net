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
    public partial class Expense : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourse();
                GetExpense();

            } 
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
            DataTable dt = fn.Fetch("Select * from Subject where CourseId = '" + courseId + "'");
            ddlSubject.DataSource = dt;
            ddlSubject.DataTextField = "SubjectName";
            ddlSubject.DataValueField = "SubjectId";
            ddlSubject.DataBind();
            ddlSubject.Items.Insert(0, "Select Subject");

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


        private void GetExpense()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No] , e.ExpenseId, e.CourseId, c.CourseName, e.SubjectId, s.SubjectName, e.ChargeAmount from Expense e
                                               inner join Course c on e.CourseId = c.CourseId 
                                               inner join Subject s on e.SubjectId = s.SubjectId");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string courseId = ddlCourse.SelectedValue;

                string subjectId = ddlSubject.SelectedValue;

                string chargeAmt = txtExpenseAmt.Text.Trim();


                DataTable dt = fn.Fetch("Select * from Expense Where CourseId = '" + courseId + "' and  SubjectId= '" + subjectId + "'  or ChargeAmount = '" + chargeAmt + "' ");
                if (dt.Rows.Count == 0)

                {
                    string query = "Insert into Expense Values('" + courseId + "', '" + subjectId + "', '" + chargeAmt + "')";
                    fn.Query(query);
                    lblmsg.Text = "Inserted Succesfully!";
                    lblmsg.CssClass = "alert alert-success";
                    ddlCourse.SelectedIndex = 0;
                    ddlSubject.SelectedIndex = 0;
                    txtExpenseAmt.Text = string.Empty;
                    GetExpense();
                }
                else
                {
                    lblmsg.Text = "Entered <b>  Data </b> Already Exists !";
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
            GetExpense() ;
        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int expenseId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string courseId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlCourseGv")).SelectedValue;
                string subjectId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("ddlSubjectGv")).SelectedValue;
                string chargeAmt = (row.FindControl("txtExpenseAmt") as TextBox).Text.Trim();

                fn.Query(@"Update Expense set CourseId = '" + courseId + "' , SubjectId = '" + subjectId + "', ChargeAmount = '" + chargeAmt + "' " +
                    " where ExpenseId = '" + expenseId + "' ");
                lblmsg.Text = "Record Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetExpense();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetExpense() ;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int expenseId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                fn.Query("Delete from Expense where ExpenseId = '" + expenseId + "'");
                lblmsg.Text = "Expense  Deleted Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetExpense();
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
            GetExpense();
        }

    }
}