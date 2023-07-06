<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="UniversityManagementSystem.Admin.Student" %>
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
            <h3 class="text-center">Add Student</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">
                    <label for="txtName">Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Name" required></asp:TextBox>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name Should Be In Characters" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName"></asp:RegularExpressionValidator>
                </div>
                <div class=" col-md-6">
                    <label for="txtDoB">Date of Birth</label>
                    <asp:TextBox ID="txtDoB" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">
                    <label for="ddlGender">Gender</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Rather Not Say</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gender is Required" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </div>
                <div class=" col-md-6">
                    <label for="txtMobile">Mobile</label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Number" placeholder="10 Digits Mobile No" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="format = +9101234567890" ForeColor="Red" ValidationExpression="\+?\(?\d{2,4}\)?[\d\s-]{3,}"
                        Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">
                    <label for="txtRoll">Roll Number</label>
                    <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Enter Roll No." required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Roll No." ForeColor="Red" ValidationExpression="([a-zA-Z0-9\s]){8,20}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtRoll"></asp:RegularExpressionValidator>
                </div>
                <div class=" col-md-6">
                    <label for="ddlCourse">Course</label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Course Is Required" ControlToValidate="ddlCourse" InitialValue="Select Course" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-6">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email" TextMode="Email" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="[a-zA-Z0-9_\.\+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-\.]+"
                        Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                </div>
                <div class=" col-md-6">
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Placeholder="Enter Your Password" TextMode="Password" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Must Use 1 Digit,UpperCase And Lower Case" ForeColor="Red" ValidationExpression="(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9].*[0-9])(?=.*[^a-zA-Z0-9]).{8,}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtPassword"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class=" col-md-12">
                    <label for="txtAddress">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" required></asp:TextBox>

                </div>

            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Add Student" OnClick="btnAdd_Click1" />

                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display!" AutoGenerateColumns="False" AllowPaging="true" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="StudentId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>

                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtName" runat="server" Text=' <%# Eval("Name") %>' Width="100%" CssClass="form-control">
                                    </asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mobile">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtMobile" runat="server" Text=' <%# Eval("Mobile") %>' CssClass="form-control" Width="100%">
                                    </asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmail" runat="server" Text=' <%# Eval("Email") %>' CssClass="form-control" Width="100%">
                                    </asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Roll No.">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtRollNo" runat="server" Text=' <%# Eval("RollNo") %>' Width="100px" CssClass="form-control">
                                    </asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblRoll" runat="server" Text='<%# Eval("RollNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Course">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control" Width="120px"></asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblCourse" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
    <%--                        <asp:TemplateField HeaderText="Password">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPassword" runat="server" Text=' <%# Eval("PassWord") %>' CssClass="form-control" Width="100%">
                                    </asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("PassWord") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAddress" runat="server" Text=' <%# Eval("Address") %>' CssClass="form-control" TextMode="MultiLine" Width="100px">
                                    </asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowEditButton="True" ShowDeleteButton="true">

                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>

                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />

                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
