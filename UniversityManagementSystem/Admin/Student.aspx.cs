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
    public partial class Student : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourse();
                GetStudents();
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

        private void GetStudents()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No], s.StudentId, s.[Name], s.DOB, s.Gender,s.Mobile,s.Email,s.RollNo,s.[Address],s.PassWord, c.CourseId , c.CourseName from Student s inner join course c on c.CourseId = s.CourseId");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnAdd_Click1(object sender, EventArgs e)
        {

            try
            {
                if (ddlGender.SelectedValue != "0")
                {
                    string rollNo = txtRoll.Text.Trim();
                    DataTable dt = fn.Fetch("Select * from Student where CourseId = '" + ddlCourse.SelectedValue + "' and RollNo = '" + rollNo + "' ");
                    if (dt.Rows.Count == 0)
                    {
                        string query = "Insert into Student values ('" + txtName.Text.Trim() + "', '" + txtDoB.Text.Trim() + "', '" + ddlGender.SelectedValue + "',  '" + txtMobile.Text.Trim() + "',  '" + txtEmail.Text.Trim() + "','" + txtRoll.Text.Trim() + "',  '" + txtAddress.Text.Trim() + "','" + ddlCourse.SelectedValue + "',  '" + txtPassword.Text.Trim() + "')";
                        fn.Query(query);
                        lblmsg.Text = "Inserted Succesfully!";
                        lblmsg.CssClass = "alert alert-success";
                        ddlGender.SelectedIndex = 0;
                        txtName.Text = string.Empty;
                        txtDoB.Text = string.Empty;
                        txtMobile.Text = string.Empty;
                        txtEmail.Text = string.Empty;
                        txtAddress.Text = string.Empty;
                        txtPassword.Text = string.Empty;
                        txtRoll.Text = string.Empty;
                        ddlCourse.SelectedIndex = 0;
                        GetStudents();
                    }

                    else
                    {
                        lblmsg.Text = "Entered Roll No.<b>'" + rollNo + "'</b> already exists for Selected Course!";
                        lblmsg.CssClass = "alert alert-danger";
                    }
                }

                else
                {
                    lblmsg.Text = "Gender is Required";
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
            GetStudents();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetStudents();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                fn.Query("Delete from Student where StudentId = '" + studentId + "'");
                lblmsg.Text = "Student Deleted Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetStudents();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetStudents();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string name = (row.FindControl("txtName") as TextBox).Text;
                string mobile = (row.FindControl("txtMobile") as TextBox).Text;
                string email = (row.FindControl("txtEmail") as TextBox).Text;
                string rollNo = (row.FindControl("txtRollNo") as TextBox).Text;
                //string password = (row.FindControl("txtPassword") as TextBox).Text;
                string address = (row.FindControl("txtAddress") as TextBox).Text;
                string courseId = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[4].FindControl("ddlCourse")).SelectedValue;
                fn.Query("Update Student set Name = '" + name.Trim() + "', Mobile = '" + mobile.Trim() + "',Email= '" + email.Trim() + "'," +
                    " Address = '" + address.Trim() + "', RollNo = '" + rollNo.Trim() + "', CourseId = '" + courseId + "'  Where StudentId = '" + studentId + "' ");
                lblmsg.Text = "Student Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetStudents();

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
                DropDownList ddlCourse = (DropDownList)e.Row.FindControl("ddlCourse");
                DataTable dt = fn.Fetch("Select * from Course ");
                ddlCourse.DataSource = dt;
                ddlCourse.DataTextField = "CourseName";
                ddlCourse.DataValueField = "CourseId";
                ddlCourse.DataBind();
                ddlCourse.Items.Insert(0, "Select Course");
                string selectedCourse = DataBinder.Eval(e.Row.DataItem, "CourseName").ToString();
                ddlCourse.Items.FindByText(selectedCourse).Selected = true;
            }
        }
    }

   
}