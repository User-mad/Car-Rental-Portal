<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Adminmangecity.aspx.cs" Inherits="Rental_01.Admin.Adminmangecity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">City.  </h1>
                       
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-24">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           Enter  City.
                        </div>
                        <div class="panel-body">
                            <form id="Form1"  runat="server">
                                        <div class="form-group">
                                            <label>Enter City Name</label>
                                            <asp:TextBox ID="txtcityname" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>


                                        <br />

                            <asp:Button ID="btncity" runat="server" Text="Add City" class="btn btn-info" 
                                            onclick="btncity_Click"    />

                                  
                                       
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
