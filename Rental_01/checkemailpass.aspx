<%@ Page Title="" Language="C#" MasterPageFile="~/Mstr_home.Master" AutoEventWireup="true" CodeBehind="checkemailpass.aspx.cs" Inherits="Rental_01.checkemailpass" %>
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
                            <label for="email">Email</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon flaticon-black-back-closed-envelope-shape"></i>
                                    </span>
                                </div>
                                
                                    <asp:TextBox ID="txtemail" TextMode="Email" class="form-control" placeholder="Enter Your Email" runat="server">
                                    </asp:TextBox>
                            </div>
                            <!--// Email-->
                            <div class="main-btn-wrap text-center padding-top-60">
                                <asp:Button ID="btnsubmit" class="main-btn black uppercase" runat="server" 
                                    Text="CHECK" onclick="btnsubmit_Click" />
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
