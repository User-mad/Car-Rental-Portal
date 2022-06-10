<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="adminservices.aspx.cs" Inherits="Rental_01.Admin.adminservices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Services  </h1>
                       
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-24">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           Enter  Details.
                        </div>
                        <div class="panel-body">
                            <form id="Form1"  runat="server">
                                        <div class="form-group">
                                            <label>Enter Service Name</label>
                                            <asp:TextBox ID="txtservicename" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                 <div class="form-group">
                                            <label>Enter Category</label>
                                     <asp:DropDownList ID="DropDownList1"   class="form-control" runat="server">
                                     </asp:DropDownList>
                                        </div>
                                           <div class="form-group">
                                            <label>Enter City</label>
                                     <asp:DropDownList ID="DropDownList2"   class="form-control" runat="server">
                                     </asp:DropDownList>
                                        </div>



                                        <div class="form-group">
                                            <label>Enter Hours</label>
                                            <asp:TextBox ID="txthours" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Price</label>
                                            <asp:TextBox ID="txtprice" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                    
                                        <div class="form-group">
                                            <label>Enter Description</label>
                                            <asp:TextBox ID="txtdescription" class="form-control"   TextMode="MultiLine" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                            
                                            
                                           <div class="form-group">
                                            <label> Image 1</label>
                                           
                                               <asp:FileUpload ID="imageup1" class="form-control" runat="server" />
                                         
                                        </div>
                                    <div class="form-group">
                                            <label> Image 2</label>
                                           
                                               <asp:FileUpload ID="imageup2" class="form-control" runat="server" />
                                         
                                        </div>
                                          <div class="form-group">
                                            <label> Image 3</label>
                                           
                                               <asp:FileUpload ID="imageup3" class="form-control" runat="server" />
                                         
                                        </div>
                                          <div class="form-group">
                                            <label>Enter Seats</label>
                                            <asp:TextBox ID="txtseats" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                         <div class="form-group">
                                            <label>Enter Mileage</label>
                                            <asp:TextBox ID="txtmileage" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                          <div class="form-group">
                                            <label>Enter Top Speed</label>
                                            <asp:TextBox ID="txtspeed" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                         
                                          <div class="form-group">
                                            <label>Enter Boot Space</label>
                                            <asp:TextBox ID="txtboot" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                          <div class="form-group">
                                            <label>Enter Transmission</label>
                                            <asp:TextBox ID="txttrans" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>


                                        <br />

                            <asp:Button ID="btnservices" runat="server" Text="Add Services" class="btn btn-info"    onclick="btnservices_Click" />

                                  
                                       
                                    </form>
                            </div>
                        </div>
                            </div>
        </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
 
</asp:Content>
