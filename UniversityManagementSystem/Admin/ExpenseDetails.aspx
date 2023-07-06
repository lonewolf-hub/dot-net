<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ExpenseDetails.aspx.cs" Inherits="UniversityManagementSystem.Admin.ExpenseDetails" %>
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
         
            <h3 class="text-center">Expense Details</h3>

           
            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display!" AutoGenerateColumns="False" >
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" >
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="CourseName" HeaderText="Course">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="SubjectName" HeaderText="Subject">
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ChargeAmount" HeaderText="Charge Amt(Per Lecture)">
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