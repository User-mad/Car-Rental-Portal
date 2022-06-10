<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="rentservicedetails.aspx.cs" Inherits="Rental_01.rentservicedetails2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript" src="Json/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="Json/jquery.bvalidator.js"></script>

<link href="Json/bvalidator.theme.gray2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">    var optionsGray2 = { classNamePrefix: 'bvalidator_gray2_', position: { x: 'right', y: 'center' }, offset: { x: 15, y: 0 }, template: '<div class="{errMsgClass}"><div class="bvalidator_gray2_arrow"></div><div class="bvalidator_gray2_cont1">{message}</div></div>' };
    $(document).ready(function () { $('#form1').bValidator(optionsGray2); }); 
 </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<!--Breadcrumb Start-->
    <div class="breadcrumb-area" style="background-image: url('assets/img/breadcrumb/05.png')">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner text-center">
                        <h1 class="page-title">Rent A Car </h1>
                        <ul class="page-list">
                            <li><a href="innerhome.aspx">Home</a></li>
                            <li>Car Rent</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb End-->

    <!--Step Car Sell-->
    <div class="step-car-sell">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="step-car-sell__thumb margin-minus">
                        <img src="assets/img/car-sell/01.png" alt="img">
                    </div>
                </div>
                <!--// Thumbnail-->

                <div class="col-lg-12 padding-bottom-160">
                    <div class="step-car-sell__content">
                        <div class="step-car-sell__details">
                            
                                <div class="step-car-sell__details_form style-02">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <label for="first_name">First Name</label>
                                            <asp:TextBox ID="txtfname" runat="server" data-bvalidator="required"  class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-2"></div>
                                        <div class="col-lg-4">
                                            <label for="last_name">Last Name</label>
                                            <asp:TextBox ID="txtlname" runat="server" data-bvalidator="required" class="form-control"></asp:TextBox>
                                        </div>
                                                                                <div class="col-lg-2"></div>
                                        <div class="col-lg-4">
                                            <label for="email_address">Email Address</label>
                                            <asp:TextBox ID="txtemail" runat="server"  data-bvalidator="email,required" class="form-control"></asp:TextBox>                                            
                                        </div>
                                                                                <div class="col-lg-2"></div>
                                        <div class="col-lg-4">
                                            <label for="phone_number">Phone Number</label>
                                            <asp:TextBox ID="txtphone" runat="server" data-bvalidator="digit,minlength[10],required"  class="form-control"></asp:TextBox> 
                                        </div>

                                                                                <div class="col-lg-2"></div>

                                        <div class="col-lg-2"></div>

                                        <div class="col-lg-4">
                                            <label for="car_make">Pick Up Location</label>
                                            <asp:TextBox ID="txtpicklocation"  ReadOnly="true" runat="server"  class="form-control"></asp:TextBox>
                                            
                                        </div>
                                        <div class="col-lg-4">
                                            <label for="car_model">Drop Off Location</label>
                                            
                                             <asp:DropDownList ID="dropoffddl" data-bvalidator="required" class="form-control"   runat="server">
                                      </asp:DropDownList>
                               
                                        </div>

                                        <div class="col-lg-2">                                           
                                        </div>

                                        

                                        <div class="col-lg-4">
                                            <label for="car_model">Pick Up Date</label>
                                          
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                             <asp:TextBox ID="txtpdate" data-bvalidator="required"  ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                           <asp:Calendar ID="Calendar1"  ondayrender="Calendar1_DayRender"   runat="server" 
                                                                        onselectionchanged="Calendar1_SelectionChanged1"  >
                                                                         <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" /></asp:Calendar> 




                                            
                                            
                                            </ContentTemplate>
                                            </asp:UpdatePanel>
                                       

                                        </div>
                                     
                                         <div class="col-lg-2"> 
                                          <label for="car_model">Pickup Time</label>
                                            
                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
       
                                   <asp:DropDownList ID="ddldetails" runat="server" AutoPostBack="true" data-bvalidator="required" onselectedindexchanged="ddldetails_SelectedIndexChanged" class="form-control" >
                                                <asp:ListItem Value="0">8:00 A.M</asp:ListItem>
                                                <asp:ListItem Value="1">9:00 A.M</asp:ListItem>
                                                <asp:ListItem Value="2">10:00 A.M</asp:ListItem>
                                                <asp:ListItem Value="3">11:00 A.M</asp:ListItem>
                                                <asp:ListItem Value="4">12:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="5">1:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="6">2:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="7">3:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="8">4:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="9">5:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="10">6:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="11">7:00 P.M</asp:ListItem>
                                                <asp:ListItem Value="12">8:00 P.M</asp:ListItem>
                                        </asp:DropDownList>  
                                   
                                   </ContentTemplate>
                                    </asp:UpdatePanel>
                                                                                 
                                        </div>

                                        <div class="col-lg-4">
                                            <label for="car_model">Drop Off Date</label>
                                           
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                             <asp:TextBox ID="txtldate" data-bvalidator="required" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                                             <asp:Calendar ID="Calendar2" ondayrender="Calendar2_DayRender" runat="server"   onselectionchanged="Calendar2_SelectionChanged">
                                                         <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                    </asp:Calendar>
                                            
                                            
                                            
                                            </ContentTemplate>
                                            </asp:UpdatePanel>
                            

                                        </div>

                                        <div class="col-lg-2"> 
                                         <label for="car_model">Dropoff Time</label>
                                          
                                         <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                       <ContentTemplate>
                                        <asp:TextBox ID="txttime" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>
                                        
                                        </div>
                                        
                                        <div class="col-lg-5"></div>
                                        
                                        <div class="col-lg-5"></div>

                                        <br />
                                        
                                        <div class="col-lg-5"></div>
                                        <div class="col-lg-2">
                                            <div class="d-flex align-items-center">
                                                <div class="main-btn-wrap padding-top-5 pr-5">
                                                      <asp:Button ID="btnrent" class="main-btn black uppercase" runat="server" 
                                                          Text="Rent Now" onclick="btnrent_Click" />
                                                </div>                                                                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-5"></div>
                                    
                                    </div>
                                </div>

                           
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <!--// Step Car Sell Content-->
                </div>
            </div>
        </div>
    </div>
    <!--// Step Car Sell-->

</asp:Content>
