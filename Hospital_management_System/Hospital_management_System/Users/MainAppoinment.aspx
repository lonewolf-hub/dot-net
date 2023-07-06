<%@ Page Title="Appointments" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="MainAppoinment.aspx.cs" Inherits="Hospital_management_System.Users.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div>

        
		
	<div class="about">
	<div class="abt-layer">
		<div class="container">
			<div class="about-main">
				<div class="about-right">
					<h3 class="subheading-w3-agile">Make an Appointment</h3>

					<!-- stats -->
					<div class="stats">
						<div class="stats_inner">
							<form action="#" method="post">
								<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp&nbsp&nbsp<asp:Label ID="lbl_Appontment_no" runat="server" Text="Label"></asp:Label>
								<asp:DropDownList ID="DropDownList_Section" class="form-control mb-3" runat="server">
									<asp:ListItem Value="2">Neurology</asp:ListItem>
									<asp:ListItem Value="3">Dentistry</asp:ListItem>
									<asp:ListItem Value="4">Cardiology</asp:ListItem>
									<asp:ListItem Value="5">Pediatrics</asp:ListItem>
									<asp:ListItem Value="6">Pulmonolog</asp:ListItem>
									<asp:ListItem Value="7"> Ophthalmolog</asp:ListItem>
									<asp:ListItem Value="8">Diagnostics</asp:ListItem>
								</asp:DropDownList>


								<asp:TextBox ID="txt_Appoint_name" placeholder="Name" class="form-control mb-3" runat="server"></asp:TextBox>
								

								<asp:DropDownList ID="DropDownList_gender" class="form-control mb-3" runat="server">
									<asp:ListItem Value="2">Gender</asp:ListItem>
									<asp:ListItem Value="3">Male</asp:ListItem>
									<asp:ListItem Value="4">Female</asp:ListItem>
								</asp:DropDownList>

								<asp:TextBox ID="txt_Apoint_Mobile" class="form-control mb-3" placeholder="Phone"  runat="server"></asp:TextBox>
								
								<asp:TextBox ID="txt_Apoint_Email" class="form-control mb-3" placeholder="Email"  runat="server"></asp:TextBox>
								
								<asp:TextBox ID="datepicke" class="form-control date mb-3"  placeholder="Select Date"  runat="server"></asp:TextBox>
								
								<asp:Button ID="btn_main_appointment_Submit" runat="server" class="btn btn-agile btn-block w-100" Text="Make An Appointment" OnClick="btn_main_appointment_Submit_Click"  />
								
							</form>
						</div>
					</div>
					<!-- //stats -->

				</div>
			</div>
			
		</div>
		</div>
	</div>
	<!--//about-->

    </div>


</asp:Content>
