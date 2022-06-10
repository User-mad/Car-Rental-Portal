<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Adminmangeservice.aspx.cs" Inherits="Rental_01.Admin.Adminmangeservice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Data Table</h1>
                        <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                    </div>
                </div>
                <!-- /. ROW  -->
              
            <div class="row">
                <div class="col-md-12">
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Kitchen Sink
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                               
                                        <form id="Form1" runat="server">
                                           
              
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         DataKeyNames="sid" DataSourceID="SqlDataSource1" AllowPaging="True" 
                         CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                         onrowcommand="GridView1_RowCommand" 
                         Width="923px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" >
                                          
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="sid" HeaderText="Sid" 
                                 InsertVisible="False" ReadOnly="True" SortExpression="sid"/>
                             <asp:BoundField DataField="sname" HeaderText="Sname" 
                                 SortExpression="sname" />
                             <asp:BoundField DataField="category" HeaderText="Category" 
                                 SortExpression="category" />
                             <asp:BoundField DataField="hours" HeaderText="Hours" 
                                 SortExpression="hours" />
                                 <asp:BoundField DataField="price" HeaderText="Price" 
                                 SortExpression="price" />
                                  <asp:BoundField DataField="city" HeaderText="City" 
                                 SortExpression="city" />
                            
                            
                           <asp:TemplateField>
                            <ItemTemplate>
                                <img src="/Admin/serviceimage/<%# Eval("img1") %>" Height="100" 
                                Width="100" alt="img">
                                
                            </ItemTemplate>
                        </asp:TemplateField>
                              

                             <asp:BoundField DataField="seat" HeaderText="Seat" SortExpression="seat" />
                             <asp:BoundField DataField="mileage" HeaderText="Mileage" 
                                 SortExpression="milage" />
                             <asp:BoundField DataField="topspeed" HeaderText="Topspeed" 
                                 SortExpression="topspeed" />
                             <asp:BoundField DataField="bootspace"  HeaderText="Bootspace" 
                                 SortExpression="bootspace" />
                             <asp:BoundField DataField="transmission" HeaderText="Transmission" 
                                 SortExpression="transmission" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" 
                                 HeaderText="View" ShowHeader="True" Text="VIEW" />
                             <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="EDIT" 
                                 Text="Edit" />
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
                         SelectCommand="SELECT * FROM [services]">
                     </asp:SqlDataSource>
                &nbsp;
                
                          
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
