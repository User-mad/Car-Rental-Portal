<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="categoryadmin.aspx.cs" Inherits="Rental_01.Admin.categoryadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Category Form </h1>
                       
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
                            <form  runat="server">
                                        <div class="form-group">
                                            <label>Enter Category Name</label>
                                            <asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>

                                            
                                           
                                        </div>
                                 <div class="form-group">
                                            <label>Enter Description</label>
                                             <asp:TextBox ID="txtdescription" class="form-control" runat="server"   TextMode="MultiLine"></asp:TextBox>
                                           
                                        </div>
                                            <div class="form-group">
                                            <label> Image</label>
                                           
                                               <asp:FileUpload ID="carfile" runat="server" />
                                         
                                        </div>
                                  
                                        <br />

                            <asp:Button ID="btncategory" runat="server"  class="btn btn-info" Text="Add Category"  onclick="btncategory_Click"                                      />

                                  
                                       
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
