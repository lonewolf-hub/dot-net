
    <%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="SSAttend.aspx.cs" Inherits="Student_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(function(){

    $('#pointspossible').on('input', function() {
      calculate();
    });
    $('#pointsgiven').on('input', function() {
     calculate();
    });
    function calculate(){
        var pPos = parseInt($('#pointspossible').val()); 
        var pEarned = parseInt($('#pointsgiven').val());
        var perc="";
        if(isNaN(pPos) || isNaN(pEarned)){
            perc=" ";
           }else{
           perc = ((pEarned/pPos) * 100).toFixed(3);
           }

        $('#pointsperc').val(perc);
    }

        });
        </script>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tbl">
        <div>
    <table class="tbl"  style="overflow:scroll">
         <tr>
            <td class="tblhead" bgcolor="#369">
                Attendance <br />
            </td>
        </tr>
        
     </table>
            <br />
            <table class="auto-style1" bgcolor="white" border="1" frame="box">
                <tr>
                    <td style="color: #007acc; font-weight: bold; font-size: large">BRANCH :
                        <asp:Label ID="lblcourse" runat="server"></asp:Label>
                    </td>
                </tr>
             <!--     <tr>
            <td class="auto-style3" align="center" ><b>Select Branch</b></td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="336px" DataSourceID="SqlDataSource1" DataTextField="Course" DataValueField="Course">
                </asp:DropDownList>
            </td>
        </tr>-->
                <tr>
                    <td class="auto-style1" align="center" ><b>Select Course</b> </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="class" DataValueField="class" Width="336px" Height="31px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Show Attendance" OnClick="Button14_Click" CssClass="btn" Height="28px" Width="190px" />
                    </td>
                </tr>
            </table>
         </div>
    <div>
       
        <br />
        
        <table>

             <tr>
            <td style="color: #007acc; font-weight: bold; font-size: large">
                Name :
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="color: #007acc; font-weight: bold; font-size: large" class="auto-style1">
                Course :
                <asp:Label ID="lblcourse1" runat="server"></asp:Label>
            </td>
        </tr>

        </table>
        
        <br />
  
        <table border="1" frame="border">
            <tr>
                <td align="center"><b>Total Attend </b></td>
                <td align="center"><b>Total Classes </b></td>
                <td align="center"><b>Percentage of Attendace </b> </td>

            </tr>
            <tr>
                <td align="center">    <asp:Label ID="Label4" runat="server">Attend</asp:Label></td>
                <td align="center">    <asp:Label ID="Label5" runat="server">Total</asp:Label></td>
                <td align="center">    <asp:Label ID="Label6" runat="server">Percent</asp:Label></td>

            </tr>
        </table>

        <br />
  
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [class] FROM [CourseMst]">
        </asp:SqlDataSource>
  
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [Course] FROM [StudentMst]"></asp:SqlDataSource>
  
       
        </div>
    </div>
</asp:Content>

