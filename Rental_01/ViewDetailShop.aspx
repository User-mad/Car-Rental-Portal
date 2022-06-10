
<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="ViewDetailShop.aspx.cs" Inherits="Rental_01.ViewDetailShop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!--Product Details Tab-->
    <div class="product-details-tab padding-top-120 padding-bottom-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="Product-tab-big">
                        <div class="product-tab-big-active">
                            <div class="product-tab-single-big-item">
                               
                                <asp:Image ID="image1" runat="server" />
                            </div>
                            <!--// Single Item-->
                            <div class="product-tab-single-big-item">
                               
                                 <asp:Image ID="image2" runat="server" />
                            </div>
                            <!--// Single Item-->
                            <div class="product-tab-single-big-item">
                             
                                 <asp:Image ID="image3" runat="server" />
                            </div>
                            <!--// Single Item-->
                            
                        </div>
                        <!--Slider Active Class-->
                    </div>
                    <!--// Product Tab Big-->

                    <div class="Product-tab-small-active padding-top-30">
                        <div class="product-tab-single-small-item" data-slide-index="0">
                            
                             <asp:Image ID="image4" runat="server" />
                        </div>
                        <!--// Single Item-->
                        <div class="product-tab-single-small-item" data-slide-index="1">
                           
                             <asp:Image ID="image5" runat="server" />
                        </div>
                        <!--// Single Item-->
                        <div class="product-tab-single-small-item" data-slide-index="2">
                           
                             <asp:Image ID="image6" runat="server" />
                        </div>
                        <!--// Single Item-->

                        <!--// Single Item-->
                        <div class="product-tab-single-small-item" data-slide-index="3">
                            
                             <asp:Image ID="image7" runat="server" />
                        </div>
                        <!--// Single Item-->

                        <!--// Single Item-->
                        <div class="product-tab-single-small-item" data-slide-index="4">
                           
                             <asp:Image ID="image8" runat="server" />
                        </div>
                        <!--// Single Item-->

                        <!--// Single Item-->
                        <div class="product-tab-single-small-item" data-slide-index="5">
                           
                             <asp:Image ID="image9" runat="server" />
                        </div>
                        <!--// Single Item-->

                        <!--// Single Item-->
                        <div class="product-tab-single-small-item" data-slide-index="6">
                          
                             <asp:Image ID="image10" runat="server" />
                        </div>
                        <!--// Single Item-->

                    </div>
                    <!--// Slider Active Class-->

                  
                    <!--// Product Information-->
                </div>

                <div class="col-lg-5">
                    <!--Product Description-->
                    <div class="product-description pl-lg-4">
                        <h4 class="title"> <asp:Label ID="lblname" runat="server" Text=""></asp:Label> </h4>
                        <!--// Title-->
                        <div class="rating-wrap">
                           
                        </div>
                        <!--// Rating Wrap-->
                        <div class="common-price-style">
                            Price: <span class="black">     <asp:Label ID="lblprice" runat="server" Text=""></asp:Label></span>
                        </div>
                        <!--// Price-->
                        <div class="padding-top-15 padding-bottom-20">
                            <p class="red">Don't miss out on the festive offers this month</p>
                        </div>

                        <div class="color-list style-02">
                            
                        </div>
                        <!--// Color List-->

                        <div class="car-assets">
                            <div class="car-assets-item">
                                <div class="icon"><i class="flaticon-safety-seat"></i></div>
                                <div class="content">
                                    <div class="sub-title">Seat</div>
                                    <h5 class="title">
                                        <asp:Label ID="lblseats" runat="server" Text=""></asp:Label></h5>
                                </div>
                            </div>
                            <!--// car assets item-->

                            <div class="car-assets-item">
                                <div class="icon"><i class="flaticon-signal-tower"></i></div>
                                <div class="content">
                                    <div class="sub-title">Transmission</div>
                                    <h5 class="title">
                                        <asp:Label ID="lbltrans" runat="server" Text=""></asp:Label></h5>
                                </div>
                            </div>
                            <!--// car assets item-->

                            <div class="car-assets-item">
                                <div class="icon"><i class="flaticon-speedometer"></i></div>
                                <div class="content">
                                    <div class="sub-title">Mileage</div>
                                    <h5 class="title">
                                        <asp:Label ID="lblmileage" runat="server" Text=""></asp:Label></h5>
                                </div>
                            </div>
                            <!--// car assets item-->
                        </div>
                        <!--// Car Assets-->

                        <div class="car-assets padding-top-10">
                            <div class="car-assets-item">
                                <div class="icon"><i class="flaticon-speedometer-1"></i></div>
                                <div class="content">
                                    <div class="sub-title">Top Speed</div>
                                    <h5 class="title">
                                        <asp:Label ID="lbltopspeed" runat="server" Text=""></asp:Label></h5>
                                </div>
                            </div>
                            <!--// car assets item-->

                            <div class="car-assets-item">
                                
                            </div>
                            <!--// car assets item-->

                            <div class="car-assets-item">
                                <div class="icon"><i class="flaticon-fuel-station"></i></div>
                                <div class="content">
                                    <div class="sub-title">Boot Space</div>
                                    <h5 class="title">
                                        <asp:Label ID="lblbootspace" runat="server" Text=""></asp:Label></h5>
                                </div>
                            </div>
                            <!--// car assets item-->
                        </div>
                        <!--// Car Assets-->

                        <div class="cart-wrap padding-top-15 padding-bottom-30">
                           
                            <div class="main-btn-wrap">
                                <a href="rentservicedetails.aspx" class="main-btn black"><i class="flaticon-shopping-cart"></i>Rent Now</a>
                            </div>
                        </div>
                        <!--// Cart Wrap-->
                    </div>
                    <!--// Product Description-->
                </div>

                <div class="col-lg-12">
                   
                </div>

            </div>

        </div>
    </div>
    <!--// Product Details Tab-->


</asp:Content>
