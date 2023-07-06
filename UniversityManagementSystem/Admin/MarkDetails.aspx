<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="MarkDetails.aspx.cs" Inherits="UniversityManagementSystem.Admin.MarkDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <h3 class="text-center">Students Marks</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">

                    <label for="ddlCourse">Course</label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Course Is Required" ControlToValidate="ddlCourse" InitialValue="Select Course" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class=" col-md-6">
                    <label for="txtRoll">Student Roll Number</label>
                    <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Enter Student Roll Number"  required></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Get Marks" OnClick="btnAdd_Click1" />

                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display!" AutoGenerateColumns="False" AllowPaging="true" PageSize="8" OnPageIndexChanging="GridView1_PageIndexChanging" >
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" >
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>


                            <asp:BoundField DataField="ExamId" HeaderText="ExamId">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>


                            <asp:BoundField DataField="CourseName" HeaderText="CourseName">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="SubjectName" HeaderText="Subject">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="RollNo" HeaderText="Roll No">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="TotalMarks" HeaderText="Total Marks">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>

                            <asp:BoundField DataField="OutOfMarks" HeaderText="Out Of Marks">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>

                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />

                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
