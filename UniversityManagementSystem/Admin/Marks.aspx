<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="UniversityManagementSystem.Admin.Marks" %>
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
    <div >

        <div class="container p-md-4 p-sm-4 ">
            <div>
                <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
            </div>
            <h3 class="text-center">Add Marks</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">

                    <label for="ddlCourse">Course</label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Course Is Required" ControlToValidate="ddlCourse" InitialValue="Select Course" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class=" col-md-6">
                    <label for="ddlSubject">Subject</label>
                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject Is Required" ControlToValidate="ddlSubject" InitialValue="Select Subject" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class=" col-md-12 mt-2">
                    <label for="txtRoll"></label>
                    <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Enter Student  Roll Number" required></asp:TextBox>

                </div>
                <div class=" col-md-6 mt-2">
                    <label for="txtStudMarks">Total Marks(Student Marks)</label>
                    <asp:TextBox ID="txtStudMarks" runat="server" CssClass="form-control" placeholder="Enter Total Marks" TextMode="Number" required></asp:TextBox>

                </div>
               

              
              
                <div class=" col-md-6 mt-2">
                    <label for="txtOutOfMarks">Out Of Marks</label>
                    <asp:TextBox ID="txtOutOfMarks" runat="server" CssClass="form-control" placeholder="Enter Out Of Marks" TextMode="Number" required></asp:TextBox>

                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Add Marks" OnClick="btnAdd_Click" />

                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display!" AutoGenerateColumns="False" AllowPaging="true" PageSize="4" DataKeyNames="ExamId" OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
                        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Course">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlCourseGv" runat="server" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseId" SelectedValue='<%#Eval("CourseId") %>' CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCourseGv_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:universitysysdbConnectionString %>" SelectCommand="SELECT * FROM  [Course]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("CourseName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Subject">
                                <EditItemTemplate>

                                    <asp:DropDownList ID="ddlSubjectGv" runat="server" CssClass="form-control"></asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("SubjectName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Roll Number">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtRollGv" runat="server" Text='<%#Eval("RollNo") %>'  CssClass="form-control"></asp:TextBox>

                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="txtRollGv" runat="server" Text='<%#Eval("RollNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total Marks">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStudMarksGv" runat="server" Text='<%#Eval("TotalMarks") %>' TextMode="Number" CssClass="form-control"></asp:TextBox>

                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="txtStudMarksGv" runat="server" Text='<%#Eval("TotalMarks") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Out Of Marks">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtOutOfMarksGv" runat="server" Text='<%#Eval("OutOfMarks") %>' TextMode="Number" CssClass="form-control"></asp:TextBox>

                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="txtOutOfMarksGv" runat="server" Text='<%#Eval("OutOfMarks") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>



                            <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowEditButton="True" ShowDeleteButton="true">

                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />

                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
