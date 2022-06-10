<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Rental_01.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" src="Json/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="Json/jquery.bvalidator.js"></script>

    <link href="Json/bvalidator.theme.gray2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var optionsGray2 = { classNamePrefix: 'bvalidator_gray2_', position: { x: 'right', y: 'center' }, offset: { x: 15, y: 0 }, template: '<div class="{errMsgClass}"><div class="bvalidator_gray2_arrow"></div><div class="bvalidator_gray2_cont1">{message}</div></div>' };
        $(document).ready(function () { $('#form1').bValidator(optionsGray2); }); 
     </script>
   
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" data-bvalidator="required"></asp:TextBox> </br></br>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" data-bvalidator="equalto[txtpassword],required"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
          <script type="text/javascript" src="Json/bootstrap.min.js"></script>
</body>
</html>
