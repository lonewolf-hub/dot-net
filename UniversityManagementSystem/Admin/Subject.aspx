<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="UniversityManagementSystem.Admin.Subject" %>

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
            <h3 class="text-center">New Subject</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">

                    <label for="ddlCourse">Course</label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control" DataTextField="CourseName" DataValueField="CourseId" ></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Course Is Required" ControlToValidate="ddlcourse" InitialValue="Select Course" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class=" col-md-6">
                    <label for="txtSubject">Subject</label>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Enter Subject" required></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Add Subject" OnClick="btnAdd_Click1" />

                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display!" AutoGenerateColumns="False" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="SubjectId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Course">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="CourseName" DataValueField="CourseId"  CssClass="form-control"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:universitysysdbConnectionString %>" SelectCommand="SELECT * FROM  [Course]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                    <itemtemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("CourseName") %>'></asp:Label>
                                    </itemtemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Subject">
                                <EditItemTemplate>
                                
                                        <asp:TextBox ID="TextBox1" runat="server" Text=' <% # Eval("SubjectName") %>' CssClass="form-control"></asp:TextBox>
                                    </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("SubjectName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            <asp:CommandField CausesValidation="false" HeaderText="Operation"  ShowEditButton="True" >

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
