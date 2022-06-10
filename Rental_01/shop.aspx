<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="Rental_01.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!--Blog Page Content-->
    <div class="blog-page-content padding-top-120 padding-bottom-160">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Shop Page Grig View-->
                    <div class="shop-page-grid-view">
                        <div class="product-filtering-area">

                            <div class="filter-left" id="btnContainer">
                              <h5 class="title padding-top-10">Select Your Car.</h5>
                            </div>
                            <div class="filter-right">
                               
                            </div>
                        </div>
                        <!--// Product Filtering Area-->

                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home-grid">
                          
                                     <asp:DataList ID="DataList1" runat="server" DataKeyField="sid"    RepeatColumns="3" RepeatDirection="Horizontal"   onitemcommand="hi" >
                                      <ItemTemplate>
                                <div class="grid-list-wrapper padding-top-40">
                                    <!-- Grid List Column-->
                                     
                                    <div class="grid-list-column-item">
                                        
                                        <div class="thumb">
                                            <img src="Admin/serviceimage/<%# Eval("img1") %>"  alt="img">
                    
                                        </div>
                                        <h5 class="title padding-top-10"><%# Eval("sname") %></h5>
                                        <div class="common-rating-style">
                                           
                                        </div>
                                        <div class="common-price-style ">
                                            Price: <span class="black"><%# Eval("price") %></span>
                                        </div>
                                        <div class="main-btn-wrap padding-top-20">
                                           
                                                  <asp:Button ID="ImageButton1" runat="server" 
                                    CommandArgument='<%# Eval("sid") %>' CommandName="detail" class="main-btn black-border" Text="View"/>
                                        </div>
                                    </div>
                                  
                                    <!--// Grid List Column-->

                                   
                                </div>
                                  </ItemTemplate>
                                    </asp:DataList>
                                    
                                <!--// Grid List Wrapper-->
                            </div>

                            <div class="tab-pane fade" id="single-grid">
                                <div class="grid-list-wrapper padding-top-40">
                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                       
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/01.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts01"><label
                                                        for="starts01"></label>
                                                    <input type="radio" name="start1" id="starts02"><label
                                                        for="starts02"></label>
                                                    <input type="radio" name="start1" id="starts03"><label
                                                        for="starts03"></label>
                                                    <input type="radio" name="start1" id="starts04"><label
                                                        for="starts04"></label>
                                                    <input type="radio" name="start1" id="starts05"><label
                                                        for="starts05"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                       
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/02.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts11"><label
                                                        for="starts11"></label>
                                                    <input type="radio" name="start1" id="starts12"><label
                                                        for="starts12"></label>
                                                    <input type="radio" name="start1" id="starts13"><label
                                                        for="starts13"></label>
                                                    <input type="radio" name="start1" id="starts14"><label
                                                        for="starts14"></label>
                                                    <input type="radio" name="start1" id="starts15"><label
                                                        for="starts15"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                        <span class="price-drop-tag">22%</span>
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/03.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts21"><label
                                                        for="starts21"></label>
                                                    <input type="radio" name="start1" id="starts22"><label
                                                        for="starts22"></label>
                                                    <input type="radio" name="start1" id="starts23"><label
                                                        for="starts23"></label>
                                                    <input type="radio" name="start1" id="starts24"><label
                                                        for="starts24"></label>
                                                    <input type="radio" name="start1" id="starts25"><label
                                                        for="starts25"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                        <span class="price-drop-tag">22%</span>
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/01.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts31"><label
                                                        for="starts31"></label>
                                                    <input type="radio" name="start1" id="starts32"><label
                                                        for="starts32"></label>
                                                    <input type="radio" name="start1" id="starts33"><label
                                                        for="starts33"></label>
                                                    <input type="radio" name="start1" id="starts34"><label
                                                        for="starts34"></label>
                                                    <input type="radio" name="start1" id="starts35"><label
                                                        for="starts35"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                        <span class="price-drop-tag">22%</span>
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/02.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts41"><label
                                                        for="starts41"></label>
                                                    <input type="radio" name="start1" id="starts42"><label
                                                        for="starts42"></label>
                                                    <input type="radio" name="start1" id="starts43"><label
                                                        for="starts43"></label>
                                                    <input type="radio" name="start1" id="starts44"><label
                                                        for="starts44"></label>
                                                    <input type="radio" name="start1" id="starts45"><label
                                                        for="starts45"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                        <span class="price-drop-tag">22%</span>
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/03.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts51"><label
                                                        for="starts51"></label>
                                                    <input type="radio" name="start1" id="starts52"><label
                                                        for="starts52"></label>
                                                    <input type="radio" name="start1" id="starts53"><label
                                                        for="starts53"></label>
                                                    <input type="radio" name="start1" id="starts54"><label
                                                        for="starts54"></label>
                                                    <input type="radio" name="start1" id="starts55"><label
                                                        for="starts55"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                        <span class="price-drop-tag">22%</span>
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/01.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts61"><label
                                                        for="starts61"></label>
                                                    <input type="radio" name="start1" id="starts62"><label
                                                        for="starts62"></label>
                                                    <input type="radio" name="start1" id="starts63"><label
                                                        for="starts63"></label>
                                                    <input type="radio" name="start1" id="starts64"><label
                                                        for="starts64"></label>
                                                    <input type="radio" name="start1" id="starts65"><label
                                                        for="starts65"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                    <!-- list View Item-->
                                    <div class="grid-list-column-item list-view">
                                        <span class="price-drop-tag">22%</span>
                                        <div class="grid-list-column-item__wrap">
                                            <div class="thumb">
                                                <img src="assets/img/shop/product/02.png" alt="img">
                                            </div>
                                            <div class="grid-list-column-item__content">
                                                <h5 class="title padding-top-10">Flash Deals Tyre</h5>
                                                <div class="common-rating-style">
                                                    <input type="radio" name="start1" id="starts71"><label
                                                        for="starts71"></label>
                                                    <input type="radio" name="start1" id="starts72"><label
                                                        for="starts72"></label>
                                                    <input type="radio" name="start1" id="starts73"><label
                                                        for="starts73"></label>
                                                    <input type="radio" name="start1" id="starts74"><label
                                                        for="starts74"></label>
                                                    <input type="radio" name="start1" id="starts75"><label
                                                        for="starts75"></label>
                                                </div>
                                                <div class="common-price-style">
                                                    Price: <span class="black">$145</span>
                                                </div>
                                                <div class="main-btn-wrap padding-top-20">
                                                    <a href="#" class="main-btn black-border"><i
                                                            class="flaticon-shopping-cart"></i>
                                                        Add To Cart
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// list View Item-->

                                </div>
                            </div>
                        </div>

                    </div>
                    <!--// Shop Page Grid View-->

                    <!-- Pagination-->
                    <div class="col-lg-12 margin-bottom-60">
                      
                    </div>
                    <!--// Pagination-->
                </div>

                <div class="col-lg-4">
                    <div class="widget-area">

                        <div class="widget widget_search blog-bg">
                            
                                <div class="form-group">                                    
                                    <asp:TextBox ID="txtsearch" runat="server" class="form-control" placeholder="Search (Car Name)"></asp:TextBox>
                                </div>
                                <i class="fa fa-search"></i>                           
                        </div>
                       
                       <div class="widget widget_nav_menu blog-bg ">
                            <h5 class="widget-title border-bottom ">Product Category</h5>
                               <ul>
                             <asp:DataList ID="DataList2" runat="server" DataKeyField="id" RepeatColumns="1" RepeatDirection="Horizontal"   onitemcommand="cate" >
                                      
                                      <ItemTemplate>
                                      <li>
                                        <asp:LinkButton ID="catbutton" runat="server"  CommandArgument='<%# Eval("id") %>' CommandName="cat" Text='<%# Eval("name") %>'></asp:LinkButton>
                                      </li>
                                
                                  
                               
                                  </ItemTemplate>
                                    </asp:DataList>
                                 </ul>    
                           
                        </div>
                        <div class="widget widget_nav_menu blog-bg">
                            <h5 class="widget-title border-bottom ">City</h5>
                               <ul>
                             <asp:DataList ID="DataList3" runat="server" DataKeyField="cid" RepeatColumns="1" RepeatDirection="Horizontal"   onitemcommand="cit" >
                                      
                                      <ItemTemplate>
                                      <li>
                                        <asp:LinkButton ID="catbutton" runat="server"  CommandArgument='<%# Eval("cid") %>' CommandName="city" Text='<%# Eval("cname") %>'></asp:LinkButton>
                                      </li>
                                
                                  
                               
                                  </ItemTemplate>
                                    </asp:DataList>
                                 </ul>    
                           
                        </div>

                      
                    </div>

                </div>
            </div>
        </div>
        <!--// Container-->
    </div>

</asp:Content>
