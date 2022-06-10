<%@ Page Title="" Language="C#" MasterPageFile="~/Mstr_home.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Rental_01.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--Breadcrumb Start-->
    <div class="breadcrumb-area" style="background-image: url('assets/img/contact/01.png')">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner text-center">
                        <h1 class="page-title">Feedback</h1>
                        <ul class="page-list">
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Feedback</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb End-->

    <!--Cantact-->
    <div class="contact-page padding-top-115 padding-bottom-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="left-content">
                        <div class="section-title">
                            <h2 class="heading-02 padding-bottom-20">Get In Touch</h2>
                            <p>Welcome to Coche - India's rental portal. It has always striven to serve customers in the most comprehensive and convenient way possible.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
               <form action="" id="form1" runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <asp:TextBox ID="txtname"  class="form-control" runat="server"></asp:TextBox>
                                   
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                      <asp:TextBox ID="txtemail"  class="form-control" runat="server"></asp:TextBox>
                                    
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                      <asp:TextBox ID="txtphone"  class="form-control" runat="server"></asp:TextBox>
                            
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="subject">Subject</label>
                                      <asp:TextBox ID="txtsubject"  class="form-control" runat="server"></asp:TextBox>
                                   
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="message">Message</label>
                                      <asp:TextBox ID="txtmessage"  class="form-control" runat="server" 
                                        Columns="30" Rows="10" TextMode="MultiLine"></asp:TextBox>
                                    
                                </div>
                                <div class="main-btn-wrap">
                                    <asp:Button ID="btnfeedback" class="main-btn black"  runat="server" 
                                        Text="Send Feedback" onclick="btnfeedback_Click" />
                               
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--// Cantact-->

    <div class="quick-find-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class='find-us-inner'>
                        <h4 class="title">Quick Find Us</h4>
                        <!--Contact Items-->
                        <div class="contact-items padding-top-20">
                            <div class="icon">
                                <img src="assets/img/marker.png" alt="marker">
                            </div>
                            <h5 class="heading">Main Showroom</h5>
                            <div class="contact">
                                <span class="contact-info">Old National Highway Number 8, Happy Nagar</span>
                                <span class="contact-info">Ankleshwar, Gujarat 393002</span>
                            </div>
                        </div>
                        <!--// Contact Items-->

                        <!--Contact Items-->
                        <div class="contact-items padding-top-20">
                            <div class="icon">
                                <i class="flaticon-call-answer"></i>
                            </div>
                            <h5 class="heading">Phone</h5>
                            <div class="contact">
                                <span class="contact-info">+91 9876543210</span>
                                <span class="contact-info">+91 9876543210</span>
                            </div>
                        </div>
                        <!--// Contact Items-->

                        <!--Contact Items-->
                        <div class="contact-items padding-top-20">
                            <div class="icon">
                                <i class="flaticon-black-back-closed-envelope-shape"></i>
                            </div>
                            <h5 class="heading">Email</h5>
                            <div class="contact">
                                <span class="contact-info">rutu1803@gmaill.com</span>
                                <span class="contact-info">sm269189@gmaill.com</span>
                            </div>
                        </div>
                        <!--// Contact Items-->

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
