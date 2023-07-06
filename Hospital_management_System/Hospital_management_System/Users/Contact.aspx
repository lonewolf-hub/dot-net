<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Hospital_management_System.Users.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>


         <!-- contact -->
    <section class="wthree-row w3-contact py-lg-5">
			<div class="container py-4">
            <div class="text-center wthree-title pb-sm-5 pb-3">
				<h3 class="w3l-sub">Contact Us</h3>
				<h4 class="sub-title py-3"></h4>
			</div>
            <!-- contact details -->
            <div class="row contact-form py-lg-5">
                <!-- contact left grid -->
                <div class="col-lg-6  px-lg-5 map contact-right">
                    <div class="address">
                        <h5 class="my-3">Contact info</h5>
                        <div class="row py-3 wthree-cicon">
                            <span class="fas fa-envelope-open mr-3"></span>
                            <a href="#">lukkyhospital@gmail.com</a>
                        </div>
                        <div class="row py-3  wthree-cicon">
                            <span class="fas fa-phone-volume mr-3"></span>
                            <h6>+02844 111111</h6>
                        </div>
                        <div class="row py-3  wthree-cicon">
                            <span class="fas fa-globe mr-3"></span>
                            <a href="#">www.lukkyhospital.com</a>
                        </div>
                        <div class="row py-3 wthree-cicon">
                            <span class="fas fa-map-marker mr-3"></span>
                            <h6>+91 7359735959</h6>
                        </div>
                    </div>
                </div>
                <!-- //contact left grid -->

                <!-- contact right grid -->
                <div class="col-lg-6 wthree-form-left mt-lg-0 mt-3">
                    <!-- contact form grid -->
                    <div class="contact-top1">
                        <h5 class="my-3">send us a message</h5>
                        <form action="#" method="get" class="f-color pt-3">
                            <div class="form-group">
                                <label for="contactusername">Name</label>

                                <asp:TextBox ID="txt_feedbake_name" placeholder="Your Name" class="form-control" runat="server"></asp:TextBox>
                            
                            </div>
                            <div class="form-group my-4">
                                <label for="contactemail">Email</label>
                                 <asp:TextBox ID="txt_feedbake_Email" placeholder="Enter Email ID" class="form-control" runat="server"></asp:TextBox>
                              
                            </div>

                            <div class="form-group">
                                <label for="contactcomment">Your Message</label>

                                 <asp:TextBox ID="txt_feedbake_msg" class="form-control" rows="5" placeholder="Message" runat="server" Height="106px"></asp:TextBox>
                                
                            </div>
                            <div>
                                <asp:Button ID="btn_feedbake_submit" class="btn btn-danger btn-block" runat="server" Text="Send" OnClick="btn_feedbake_submit_Click" /></div>
                            
                        </form>
                    </div>
                </div>
                <!--  //contact right grid -->
            </div>
            <!-- //contact details  -->
        </div>
    </section>
    <!-- //contact -->

    </div>



</asp:Content>
