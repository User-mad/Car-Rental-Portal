<%@ Page Title="" Language="C#" MasterPageFile="~/Mstr_home.Master" AutoEventWireup="true" CodeBehind="Sign_In.aspx.cs" Inherits="Rental_01.Sign_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script type="text/javascript" src="Json/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="Json/jquery.bvalidator.js"></script>

    <link href="Json/bvalidator.theme.gray2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">        
    var optionsGray2 = { classNamePrefix: 'bvalidator_gray2_', position: { x: 'right', y: 'center' }, offset: { x: 15, y: 0 }, template: '<div class="{errMsgClass}"><div class="bvalidator_gray2_arrow"></div><div class="bvalidator_gray2_cont1">{message}</div></div>' };
        $(document).ready(function () { $('#form1').bValidator(optionsGray2); }); 
     </script>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Sign Up Page-->
    <div class="sign padding-120" style="background-image: url("assets/img/slider/h5-slider-01.png"); width: 100%; display: inline-block;">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 offset-lg-1">
                    <div class="sign-register-area" style="background-image: url(assets/img/sign-in/01.png)">
                        <div class="sign-register-area-inner">
                            <h4 class="title">New User!</h4>
                           
                            <div class="main-btn-wrap text-center">
                                <a href="Sign_Up.aspx" class="main-btn white uppercase">REGISTER</a>
                            </div>
                        </div>
                    </div>
                    <!--// Register Area-->
                </div>
                <div class="col-lg-5">
                    <div class="sign-in-area">
                        <!--Form-->
                        <form action="" id="form1" name="form1" runat="server">
                           
                            <!--// Border-->
                            <label for="email">Email</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-black-back-closed-envelope-shape"></i>
                                    </span>
                                </div>
                                
                                    <asp:TextBox ID="txtemail" class="form-control" placeholder="Enter Your Email" runat="server" data-bvalidator="email,required">
                                    </asp:TextBox>
                            </div>
                            <!--// Email-->
                            <label for="password" class="padding-top-30">Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-lock"></i>
                                    </span>
                                </div>
                                <asp:TextBox ID="txtpassword" TextMode="Password" class="form-control" placeholder="Enter Your Password" runat="server" data-bvalidator="required">
                                    </asp:TextBox>
                                <div class="input-group-prepend">
                                    
                                </div>
                            </div>
                            <!--// Password-->
                            <div class="form-bottom-area padding-top-30">
                                <div class="remember-me"></div>
                                <div class="forgot-password">
                                    <a href="Forgot_Password.aspx">Forgot Password?</a>
                                </div>
                            </div>

                            <div class="main-btn-wrap text-center padding-top-60">
                                <asp:Button ID="btnsignin" class="main-btn black uppercase" runat="server" 
                                    Text="SIGN IN" onclick="btnsignin_Click"  name="submit"/>
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
      <script src="Json/bootstrap.min.js"></script> 
</asp:Content>
