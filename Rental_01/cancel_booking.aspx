<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="cancel_booking.aspx.cs" Inherits="Rental_01.cancel_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="breadcrumb-area" style="background-image: url('assets/img/contact/01.png')">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner text-center">
                        <h1 class="page-title">Cancel Booking</h1>
                        <ul class="page-list">
                            <li><a href="innerhome.aspx">Home</a></li>
                            <li>Cancel Booking</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-12 padding-bottom-160"></div>
     <div class="col-lg-12 padding-bottom-160">
                    <div class="step-car-sell__content">
                        <div class="step-car-sell__details">
                            
                                <div class="step-car-sell__details_form style-02">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="first_name">Booking ID</label>                                            
                                            <asp:TextBox ID="txtbookingid" runat="server" class="form-control" placeholder="#0000000000"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-6">
                                            <label for="last_name">Reason For Cancellation</label>                                            
                                                <asp:DropDownList ID="Dpcancellation" runat="server" class="form-control" >
                                                    <asp:ListItem>Personal Issue</asp:ListItem>
                                                    <asp:ListItem>Others</asp:ListItem>
                                                </asp:DropDownList>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="message">Message</label>
                                                
                                                <asp:TextBox ID="txtmessage" runat="server" class="form-control" Columns="30" 
                                                    Rows="10" TextMode="MultiLine" placeholder="Write Your Message here....(Optional)" ></asp:TextBox>
                                            </div>
                                            

                                        </div>
                                        
                                        <div class="col-lg-12">
                                            <div class="d-flex align-items-center">
                                                <div class="main-btn-wrap padding-top-5 pr-5">
                                                   <asp:Button ID="btn_cancel" runat="server" Text="Submit" class="main-btn black" />
                                                </div>
                                                <!--// Main Btn-->
                                                <p>By Clicking this button the order with respected Booking Id will get Cancelled.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                           
                        </div>
                    </div>
                    <!--// Step Car Sell Content-->
                </div>



</asp:Content>
