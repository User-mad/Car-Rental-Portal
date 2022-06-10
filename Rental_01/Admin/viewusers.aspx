<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="viewusers.aspx.cs" Inherits="Rental_01.Admin.viewusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">User Data</h1>
                        <h1 class="page-subhead-line">Data Of all Users Of Coche Portal</h1>

                    </div>
                </div>
                <!-- /. ROW  -->
              
            <div class="row">
                <div class="col-md-12">
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                               
                                        <form id="Form1" runat="server">
                                           
              
                          
                                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                                            ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                                    ReadOnly="True" SortExpression="id" />

                                                     <asp:TemplateField>
                                         <ItemTemplate>
                                          <img src="/profileimage/<%# Eval("profile") %>" Height="100" Width="100" alt="img">
                                
                                            </ItemTemplate>
                                         </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                               
                                                <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" />
                                                <asp:BoundField DataField="lname" HeaderText="Lname" SortExpression="lname" />
                                                <asp:BoundField DataField="address" HeaderText="Address" 
                                                    SortExpression="address" />
                                                <asp:BoundField DataField="mobile" HeaderText="Mobile No." 
                                                    SortExpression="mobile" />
                                                     <asp:BoundField DataField="status" HeaderText="Status" 
                                                    SortExpression="status" />
                                                       <asp:ButtonField ButtonType="Button" CommandName="block"   HeaderText="Block" ShowHeader="True" Text="Block" />
                                                    <asp:ButtonField ButtonType="Button" CommandName="unblock" HeaderText="Unblock" ShowHeader="True" Text="Unblock" />
                                                
                                                  
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:rental %>" 
                                            SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
                                           
              
                          
                </form>  
               
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
                </div>
                
                </div>
            </div>
                <!-- /. ROW  -->
        </div>
        <!-- /. PAGE WRAPPER  -->

</asp:Content>
