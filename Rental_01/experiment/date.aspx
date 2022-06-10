<%@ Page Title="" Language="C#" MasterPageFile="~/Innermaster.Master" AutoEventWireup="true" CodeBehind="date.aspx.cs" Inherits="Rental_01.experiment.date" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-6">

         <label for="car_model">Pick Up Date</label>
         <asp:TextBox ID="txtsid" runat="server" class="form-control"></asp:TextBox>

         <label for="car_model">Pick Up Date</label>
         <asp:TextBox ID="txtpdate" runat="server" class="form-control"></asp:TextBox>

         <asp:Calendar ID="Calendar1" BackColor="White" BorderColor="White"
          BorderWidth="1px" Font-Names="Verdana" runat="server"                                                                        
          class="datepicker" 
          Font-Size="9pt" Height="190px" NextPrevFormat="ShortMonth" Width="350px">
          <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
          <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
          <OtherMonthDayStyle ForeColor="#999999" />
          <SelectedDayStyle BackColor="#333399" ForeColor="White" />
          <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
          <TodayDayStyle BackColor="#CCCCCC" />
          </asp:Calendar>  

     </div>

     <div class="col-lg-2">
      <div class="d-flex align-items-center">
       <div class="main-btn-wrap padding-top-5 pr-5">
        <asp:Button ID="btnrent" class="main-btn black uppercase" runat="server" Text="Rent Now" onclick="btnrent_Click" />
       </div>                                                                                                
      </div>
     </div>

</asp:Content>
