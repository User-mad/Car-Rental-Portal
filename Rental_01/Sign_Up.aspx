<%@ Page Title="" Language="C#" MasterPageFile="~/Mstr_home.Master" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="Rental_01.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Sign Up Page-->
    <div class="sign padding-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 offset-lg-1">
                    <div class="sign-register-area" style="background-image: url(assets/img/sign-in/01.png)">
                        <div class="sign-register-area-inner">
                            <h4 class="title">Existing User</h4>
                            <p></p>
                            <div class="main-btn-wrap text-center">
                                <a href="Sign_In.aspx" class="main-btn white uppercase">SIGN IN</a>
                            </div>
                        </div>
                    </div>
                    <!--// Register Area-->
                </div>
                <div class="col-lg-5">
                    <div class="sign-in-area">
                        <!--Form-->
                        <form action="" id="form1" runat="server">
                          
                            <!--// Border-->

                            <label for="name">Name</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-man-user"></i>
                                    </span>
                                </div>
                                <asp:TextBox ID="txtname" class="form-control" placeholder="Enter Your Name" data-bvalidator="required" runat="server"></asp:TextBox>
                                </div>
                            <!--// Email-->

                            <label for="email" class="padding-top-30">Email</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-black-back-closed-envelope-shape"></i>
                                    </span>
                                </div>
                                <asp:TextBox ID="txtemail" class="form-control" TextMode="Email" placeholder="Enter Your Email" data-bvalidator="email,required" runat="server"></asp:TextBox>
                            </div>
                            <!--// Email-->

                            <label for="password" class="padding-top-30">Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-lock"></i>
                                    </span>
                                </div>
                                <asp:TextBox ID="txtpassword" class="form-control" placeholder="Enter Your Password" TextMode="Password" data-bvalidator="required" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                           <div class="input-group-prepend">
                                    
                                </div>
                            </div>
                            <!--// Password-->

                            <label for="confirm_password" class="padding-top-30">Confirm Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-lock"></i>
                                    </span>
                                </div>
                                    <asp:TextBox ID="txtconfirmpassword" class="form-control" placeholder="Confirm Password" data-bvalidator="equalto[txtpassword],required" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter the same value" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword"></asp:CompareValidator>
                                     <div class="input-group-prepend">

                                     </div>
                            </div>
                            <!--// Confirm Password-->

                            <div class="main-btn-wrap text-center padding-top-60">
                                <asp:Button ID="btnregister" class="main-btn black uppercase" runat="server" 
                                    Text="REGISTER" onclick="btnregister_Click" />
                            </div>

                        </form>
                        <!--// Form-->
                    </div>
                    <!--// Sign In Area-->
                </div>
            </div>
        </div>
    </div>
    <!--// Sign Up Page-->

</asp:Content>
