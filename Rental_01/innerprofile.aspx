<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="innerprofile.aspx.cs" Inherits="Rental_01.innerprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="basic-form padding-top-110 padding-bottom-115">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="section-title padding-bottom-50">
                        <h2 class="heading-02">Personal Information</h2>
                    </div>
                    <div class="sign-in-area">
                        <!--Form-->
                        <label for="email1">Name</label>
                            <div class="input-group">
                               
                                <asp:TextBox ID="txtname" class="form-control" placeholder="Enter  Name" 
                                    runat="server"  ></asp:TextBox>
                                
                            </div>
                            <label for="email1">Eamil</label>
                            <div class="input-group">
                               
                                <asp:TextBox ID="txtemail" class="form-control" placeholder="Enter Email" 
                                    runat="server"  ></asp:TextBox>
                                
                            </div>
                            <label for="email1">First Name</label>
                            <div class="input-group">
                               
                                <asp:TextBox ID="txtfname" class="form-control" placeholder="Enter First Name" 
                                    runat="server" ></asp:TextBox>
                                
                            </div>
                            
                            <label for="password1" class="padding-top-30">Last Name</label>
                            <div class="input-group">
                             
                                 <asp:TextBox ID="txtlname" class="form-control" placeholder="Enter Last Name" 
                                    runat="server" ></asp:TextBox>
                              
                               
                            </div>

                             <label for="email"  class="padding-top-30">Address</label>
                            <div class="input-group">
                               
                                 <asp:TextBox ID="txtaddress" class="form-control" placeholder="Enter Address" 
                                    runat="server"  TextMode="MultiLine" ></asp:TextBox>
                               
                            </div>
                            <!--// Email-->
                            <label for="password" class="padding-top-30">Contact Number</label>
                            <div class="input-group">
                                
                                 <asp:TextBox ID="txtmobile" class="form-control" placeholder="Enter Contact Number" 
                                    runat="server" ></asp:TextBox>
                               
                               
                            </div>
                            <div class="col-lg-12">
                                <div class="file-upload">
                                 <label for="password" class="padding-top-30">Profile</label>
                                 <div class="file-select">
                                
                                    <asp:FileUpload ID="profileupload"  class="file-upload" runat="server" />
                                    <div class="file-select-name" id="noFile"><i class="flaticon-paper-clip"></i>Attach File..</div>
                                
                                    
                                
                                    <i class="fas fa-plus"></i>
                               
                                </div>
                              </div>
                            </div>

                             <div class="main-btn-wrap text-center padding-top-60">
                                <asp:Button ID="btnupdate" class="main-btn black uppercase" runat="server" 
                                    Text="UPDATE" onclick="btnupdate_Click1"  />
                            </div>



                           
        <!--// Password-->
                      
                        <!--// Form-->
                    </div>
                    <!--// Basic Form Input-->
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                    <div class="section-title padding-bottom-70">
                        <h2 class="heading-02">Profile</h2>
                    </div>
                    <div class="sign-in-area">   
                    
                        <div class="input-group">
                                <div class="input-group-prepend">
                                  
                                    <img ID="profileimg" class="user-profile-img2" runat="server"/>
                                  </div>                                                              
                            </div><br />                                     
                            
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <asp:label ID="lblname" class="heading-02" runat="server">Profile</asp:label>
                                </div>                                                              
                            </div><br />
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <asp:label ID="lblemail" class="heading-02" runat="server">Profile</asp:label>
                                </div>                                                              
                            </div><br />
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <asp:label ID="lblphone" class="heading-02" runat="server">Profile</asp:label>
                                </div>                                                              
                            </div><br />
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <asp:label ID="lbladdress" class="heading-02" runat="server">Profile</asp:label>
                                </div>                                                              
                            </div>
                            
                    </div>
                </div>

              
            

               </div>

               </div>

               
    </div>
    <!--// Basic Form-->

</asp:Content>
