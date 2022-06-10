<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="your_order.aspx.cs" Inherits="Rental_01.your_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--Breadcrumb Start-->
    <div class="breadcrumb-area bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Shopping Cart</h1>
                        <ul class="page-list">
                            <li><a href="index-2.html">Home</a></li>
                            <li>cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb End-->

    <!--Shopping Cart-->
    <div class="table-style padding-bottom-105">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <table class="table table-borderless">
                        <thead class="shopping-cart__header">
                            <tr class="list-wrap">
                                <th scope="col">PRODUCT</th>
                                <th scope="col">PRICE</th>
                                <th scope="col"></th>
                                <th scope="col">BOOKING DATE</th>

                                <th scope="col">TOTAL PAID</th>
                            </tr>
                        </thead>
                        <tbody class="shopping-cart__body">

                        <asp:DataList ID="DataList1" runat="server"    RepeatColumns="1"  RepeatDirection="Vertical" >
                                      <ItemTemplate>

                            <tr class="shopping-cart__item">
                                <td>
                                    <a href="#" class="product_img"><img src="Admin/serviceimage/<%# Eval("img1") %>" height="73" width="63" alt="img"></a>
                                    <a href="#" class="product_name"><%# Eval("sname") %></a>
                                </td>
                              
                                <td>
                                    <%# Eval("price") %>
                                </td>
                                <td>
                                    <%# Eval("paymentdate") %>
                                </td>
                                <td></td>
                                <td></td>                               
                                <td>
                                    <div class="total"><%# Eval("amount") %></div>
                                </td>
                                
                                
                            </tr>
                           
                            <!--// Item-->
                                       </ItemTemplate>
                                    </asp:DataList>
                        </tbody>
                    </table>
                        <asp:DataList ID="DataList2" runat="server"    RepeatColumns="1"  RepeatDirection="Vertical" >
                          <ItemTemplate>
                             <div class="col-lg-6 col-md-12">
                                <!-- Grid List Column-->
                                <div class="grid-list-column-item style-02">
                                    <h5 class="title padding-top-30"><%# Eval("sname") %></h5>
                                    <h6 class="sub-title">Model 2019</h6>
                                    <div class="thumb">
                                        
                                    </div>
                                    <!--// Thumbnail-->
                                    <div class="price-wrap">
                                        <div class="price">
                                            <div class="common-price-style">
                                                <span class="black">Rs.<%# Eval("price") %></span>
                                            </div>
                                        
                                        </div>
                                        
                                    </div>
                                    <!--// Price Wrap-->
                                    <div class="car-functional-wrap">
                                        <div class="car-functional-wrap__item">
                                            <div class="power"><%# Eval("paymentdate") %></div>
                                            <div class="icon flaticon-speedometer"></div>
                                            <div class="force">Payment Date</div>
                                        </div>
                                        <div class="car-functional-wrap__item">
                                            <div class="power"><asp:Label ID="lblbootspace" runat="server" Text=""></asp:Label></div>
                                            <div class="icon flaticon-engine"></div>
                                            <div class="force">Bootspace</div>
                                        </div>
                                        <div class="car-functional-wrap__item">
                                            <div class="power"><%# Eval("amount") %></div>
                                            <div class="icon flaticon-fuel-station"></div>
                                            <div class="force">Price</div>
                                        </div>
                                    </div>
                                    <!--// Car Functional Wrap-->
                                </div>
                                <!--// Grid List Column-->
                            </div>
                                     </ItemTemplate>
                                    </asp:DataList>
                    
                </div>
            </div>
        </div>
    </div>
    <!--// Shopping Cart-->

</asp:Content>
