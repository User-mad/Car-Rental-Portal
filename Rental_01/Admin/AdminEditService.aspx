<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="AdminEditService.aspx.cs" Inherits="Rental_01.Admin.AdminEditService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="wrapper">      

        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Service</h1>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-24">
              <div class="panel panel-info">
                        <div class="panel-heading">
                          Update Service
                        </div>
                        <div class="panel-body">
                        <form id="Form1" runat="server" enctype="multipart/form-data">                            
                          <div class="form-group">
                            <label>Service Name</label>
                              <asp:TextBox ID="txtsname" class="form-control" runat="server"></asp:TextBox>
                          </div>

                          <div class="form-group">
                            <label>Category</label>
                              <asp:DropDownList ID="dpcategory" class="form-control" runat="server">
                              </asp:DropDownList>                              
                          </div>

                           <div class="form-group">
                            <label>City</label>
                              <asp:DropDownList ID="dpcity" class="form-control" runat="server">
                              </asp:DropDownList>                              
                          </div>

                          <div class="form-group">
                            <label>Hours</label>
                              <asp:TextBox ID="txthour" class="form-control" runat="server"></asp:TextBox>
                          </div>

                          <div class="form-group">
                            <label>Price</label>
                              <asp:TextBox ID="txtprice" class="form-control" runat="server"></asp:TextBox>
                          </div>

                         

                          <div class="form-group">
                            <label>Seat</label>
                              <asp:TextBox ID="txtseat" class="form-control" runat="server"></asp:TextBox>
                          </div>

                          <div class="form-group">
                            <label>Milage</label>
                              <asp:TextBox ID="txtmilage" class="form-control" runat="server"></asp:TextBox>
                          </div>

                          <div class="form-group">
                            <label>Top-Speed</label>
                              <asp:TextBox ID="txttopspeed" class="form-control" runat="server"></asp:TextBox>
                          </div>

                          <div class="form-group">
                            <label>Boot-Space</label>
                              <asp:TextBox ID="txtbootspace" class="form-control" runat="server"></asp:TextBox>
                          </div>

                          <div class="form-group">
                            <label>Transmission</label>
                              <asp:TextBox ID="txttransmission" class="form-control" runat="server"></asp:TextBox>
                          </div>

                           <div class="form-group">
                            <label>Description</label>
                             <asp:TextBox ID="txtdescription" class="form-control" Rows="3" runat="server" TextMode="MultiLine"></asp:TextBox>                              
                           </div>
                            

                            <div class="form-group">
                                <asp:Image ID="simg1" runat="server" Height="200px" Width="300px" /><br />
                                <label>
                               
                               Image 1: </label>
                                <asp:FileUpload ID="image1" class="form-control" runat="server" />
                            
                            </div>

                            <div class="form-group">
                            <asp:Image ID="simg2" runat="server" Height="200px" Width="300px" /><br />
                                <label>Image 2: </label>
                                <asp:FileUpload ID="image2" class="form-control" runat="server" />
                            
                            </div>

                            <div class="form-group">
                            <asp:Image ID="simg3" runat="server" Height="200px" Width="300px" /><br />
                                <label>Image 3: </label>
                                <asp:FileUpload ID="image3" class="form-control" runat="server" />
                            
                            </div>

                         <asp:Button ID="btnupdate" class="btn btn-info" runat="server" Text="Update Info" onclick="btnsubmit_Click" />&nbsp&nbsp&nbsp&nbsp
                         <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Go Back" onclick="Button1_Click" />   
                        </form>                                      
                  </div>
               </div>
             </div>

             

        </div>
             <!--/.ROW-->
            

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- /. FOOTER  -->
  
</asp:Content>
