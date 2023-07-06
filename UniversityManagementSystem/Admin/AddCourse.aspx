<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="UniversityManagementSystem.Admin.AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
    <script>
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({ searching: true });
        });
    </script>
    <style>
        body{background: linear-gradient(to bottom left,#C6EA8D , #FE90AF); background-repeat:no-repeat; background-attachment: fixed; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>

        <div class="container p-md-4 p-sm-4 ">
            <div>
                <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
            </div>
            <h3 class="text-center">New Course</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-12">

                    <label for="txtCourse">Course Name</label>
                    <asp:TextBox ID="txtCourse" runat="server" CssClass="form-control" placeholder="Enter Course Name" required></asp:TextBox>
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5" >
                <div class="col-md-6 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Add Course" OnClick="btnAdd_Click1" />

                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered datatbemp" DataKeyNames="CourseId" AutoGenerateColumns="False" EmptyDataText="No Records To Display!" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating" AllowPaging="true" PageSize="10">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Course" >
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCourseedit" runat="server" Text='<%# Eval("CourseName") %>' CssClass="form-control centerButton"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblCourseName" runat="server" Text='<%# Eval("CourseName") %>' ></asp:Label>

                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowEditButton="true" />
                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
