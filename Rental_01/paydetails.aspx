<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="paydetails.aspx.cs" Inherits="Rental_01.paydetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
</div>

<div class="breadcrumb-area" style="background-image: url('assets/img/breadcrumb/06.png')">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner text-center">
                        <h1 class="page-title">Booking Summary</h1>
                        <ul class="page-list">
                            <li><a href="innerprofile.aspx">Home</a></li>
                            <li>Booking Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb End-->

 

    <div class="car-booking-bottom padding-bottom-120 padding-top-45">
        <div class="container">
            <div class="row">

            <div class="col-lg-6">
                <div class="widget widget_nav_menu blog-bg radio-button">
                            <h5 class="widget-title border-bottom ">Billing Details</h5>

                             Username:<asp:Label ID="lbluname" runat="server" Text="Username: "></asp:Label><br />
                             Useremail:<asp:Label ID="lbluemail" runat="server" Text="Useremail: "></asp:Label><br />

                             <h6 class="widget-title "></h6>
                             <h6 class="widget-title border-bottom ">Booking Details</h6>

                             <asp:Label ID="forname" runat="server" Text="Name: "></asp:Label>&nbsp;   <asp:Label ID="lblfname" runat="server" Text=""></asp:Label>&nbsp<asp:Label ID="lbllname" runat="server" Text=""></asp:Label>
                             <br />
                             <asp:Label ID="formobile" runat="server" Text="Mobile: "></asp:Label>&nbsp;<asp:Label ID="lblumobile" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="forpkdate" runat="server" Text="PickUp Date: "></asp:Label>&nbsp; <asp:Label ID="lblpdate" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="fordpdate" runat="server" Text="DropOff Date: "></asp:Label>&nbsp; <asp:Label ID="lblddate" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="forpklocation" runat="server" Text="PickUp Location: "></asp:Label>&nbsp; <asp:Label ID="lblploc" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="fordroplocation" runat="server" Text="DropOff Location: "></asp:Label>&nbsp <asp:Label ID="lbldloc" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="fordriver" runat="server" Text="Driver Facility: "></asp:Label>&nbsp <asp:Label ID="lbldfacility" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="forcar" runat="server" Text="Car Name: "></asp:Label>&nbsp <asp:Label ID="lblservice" runat="server" Text=""></asp:Label><br />

                             <asp:Label ID="fortype" runat="server" Text="Type: "></asp:Label>&nbsp <asp:Label ID="lblcategory" runat="server" Text=""></asp:Label><br />

                </div>

                </div>
                  <div class="col-lg-6 col-md-12">
                                <!-- Grid List Column-->
                                <div class="grid-list-column-item style-02">
                                    <h5 class="title padding-top-30"><asp:Label ID="lblcarname" runat="server" Text=""></asp:Label></h5>
                                    <h6 class="sub-title">Model 2019</h6>
                                    <div class="thumb">
                                        <asp:Image ID="simg1" runat="server"  />
                                    </div>
                                    <!--// Thumbnail-->
                                    <div class="price-wrap">
                                        <div class="price">
                                            <div class="common-price-style">
                                                <span class="black">Rs.<asp:Label ID="lblprice2" runat="server" Text=""></asp:Label>/Day</span>
                                            </div>
                                        
                                        </div>
                                        
                                    </div>
                                    <!--// Price Wrap-->
                                    <div class="car-functional-wrap">
                                        <div class="car-functional-wrap__item">
                                            <div class="power"><asp:Label ID="lbltopspeed" runat="server" Text=""></asp:Label></div>
                                            <div class="icon flaticon-speedometer"></div>
                                            <div class="force">Top Speed</div>
                                        </div>
                                        <div class="car-functional-wrap__item">
                                            <div class="power"><asp:Label ID="lblbootspace" runat="server" Text=""></asp:Label></div>
                                            <div class="icon flaticon-engine"></div>
                                            <div class="force">Bootspace</div>
                                        </div>
                                        <div class="car-functional-wrap__item">
                                            <div class="power"><asp:Label ID="lblmilage" runat="server" Text=""></asp:Label></div>
                                            <div class="icon flaticon-fuel-station"></div>
                                            <div class="force">Milage</div>
                                        </div>
                                    </div>
                                    <!--// Car Functional Wrap-->
                                </div>
                                <!--// Grid List Column-->
                            </div>


            
             
                </div>
            </div>
        </div>
          <div class="checkout-area padding-bottom-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="checkout-area__wrap">
                        <div class="checkout-area__left">
                            <div class="cart-total">Cart Totals</div>
                            <div class="checkout-area__left__inner">
                                <div class="inner-left">
                                    <div class="title">Price:</div>
                                    <div class="title">Driver:</div>
                                    <div class="title">Days:</div>
                                    
                                </div>
                                <div class="inner-right">
                                    <div class="title">Rs.<asp:Label ID="lblprice" runat="server" Text=""></asp:Label>/Day</div>
                                    <div class="title">Rs.<asp:Label ID="lbldriver2" runat="server" Text=""></asp:Label>/Day</div>
                                    <div class="title"><asp:Label ID="lbldays" runat="server" Text=""></asp:Label></div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <div class="checkout-area__right">
                            <div class="title-wrap">
                                <div class="title">Total:</div>
                                <div class="title bold">Rs.<asp:Label ID="lbltotprice" runat="server" Text=""></asp:Label></div>
                            </div>
                            <div class="main-btn-wrap">
                                    <asp:Button ID="btnpay" runat="server" Text="PROCEED TO PAY" 
                                        class="main-btn black" onclick="btnpay_Click"  />
                            </div>
                            
                           
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    







</asp:Content>
