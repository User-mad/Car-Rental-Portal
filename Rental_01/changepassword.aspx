<%@ Page Title="" Language="C#" MasterPageFile="~/Mstr_home.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="Rental_01.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="sign padding-120" style="background-image: url("assets/img/slider/h5-slider-01.png"); width: 100%; display: inline-block;">
    
 <div class="container">
            <div class="row">
                
                <div class="col-lg-5">
                    <div class="sign-in-area" >
                        <!--Form-->
                        <form action="" id="form1" runat="server">
                        <!--// Border-->
                            <label for="email">Current Password</label>
                            <div class="input-group">
                                
                                
                                    <asp:TextBox ID="txtcurrent" class="form-control" 
                                        placeholder="Enter Current Password" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                             <label for="email">New Password</label>
                            <div class="input-group">
                                
                                
                                    <asp:TextBox ID="txtnew" class="form-control" placeholder="Enter New Password" 
                                        runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                             <label for="email">Confirm Password</label>
                            <div class="input-group">
                                
                                
                                    <asp:TextBox ID="txtretype" class="form-control" placeholder="Confirm New Passsword" 
                                        runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator1"
                                            runat="server" ErrorMessage="*" ControlToCompare="txtnew" 
                                        ControlToValidate="txtretype"></asp:CompareValidator>
                            </div>
                          
                            <div class="main-btn-wrap text-center padding-top-60">
                                <asp:Button ID="btnsubmit" class="main-btn black uppercase" runat="server" 
                                    Text="Change Password" onclick="btnsubmit_Click" />
                            </div>
                        </form>
                        <!--// Form-->
                    </div>
                    <!--// Forgot Password Area-->
                </div>
            </div>
        </div>

        </div>

</asp:Content>
