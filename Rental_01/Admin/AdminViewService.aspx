<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="AdminViewService.aspx.cs" Inherits="Rental_01.AdminViewService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="page-wrapper">
            <div id="page-inner">
             <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">View Service</h1>
                        <h1 class="page-subhead-line">Here Are the Details of  Service for  
                            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></h1>

                    </div>
 <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Detailed Info:
                        </div>
                        <div class="panel-body">
                            <h3>
                               Name :<asp:Label ID="lblsname" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                              Category :<asp:Label ID="lblcategory" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                               Hours :<asp:Label ID="lblhours" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                               Price :<asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                               Description :<asp:Label ID="lbldesc" runat="server" Text="Label"></asp:Label>
                            </h3>
                           <h3>
                               Seats :<asp:Label ID="lblseats" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                              Mileage :<asp:Label ID="lblmileage" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                              Topspeed :<asp:Label ID="lbltopspeed" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                               Bootspace :<asp:Label ID="lblbootspace" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                               Transmission :<asp:Label ID="lbltransmission" runat="server" Text="Label"></asp:Label>
                            </h3>
                            <h3>
                                Images :   <asp:Image ID="simg1" runat="server" Height="200px" Width="300px" />  <asp:Image ID="simg2" runat="server" Height="200px" Width="300px" />  <asp:Image ID="simg3" runat="server" Height="200px" Width="300px" />
                            
                            </h3>
                            

                           
                        </div>
                    </div>
                    </div>
               

               </div>
               </div>
</asp:Content>
