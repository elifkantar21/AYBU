<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="InternetBased.WebForm2" %>

<!DOCTYPE html>
<link href="bootstrap-responsive.min.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


</head>
<body style="background-image:url('Loginimage/54088672-healthy-food-background-studio-photo-of-different-fruits-and-vegetables-on-white-wooden-table-high-r.jpg')">
    <form id="form1" runat="server">
        <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTER AYBU FOOD SYSTEM</h2>
        <p>
            &nbsp;</p>
        <div style="width: 431px; margin-left: 166px">
            <style>
   .textbox { 

       border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 230px;
   }
   .labelClass
{
	font-weight: bold;

}
   .testbutton {
  font-family: 'arial black';
  color: #FFFDFC !important;
  font-size: 14px;
  text-shadow: 1px 1px 0px #7CACDE;
  box-shadow: 1px 1px 1px #BEE2F9;
  padding: 10px 25px;
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  border: 2px solid #3866A3;
  background: #63B8EE;
  background: linear-gradient(top,  #63B8EE,  #468CCF);
  
  background: -webkit-gradient(linear, left top, left bottom, from(#63B8EE), to(#468CCF));
  background: #63B8EE;
                    margin-left: 229px;
                }


</style>
            <asp:Label ID="Label1" runat="server" CssClass="labelClass" Text="Enter your User ID">User Id:</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="299px" style="margin-left: 11px" ></asp:TextBox>
            
            <br />
             <br />

              <asp:Label ID="Label2" runat="server" CssClass="labelClass" Text="Enter your name">Name:</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="298px" style="margin-left: 24px"></asp:TextBox>
            
             <br />
             <br />

              <asp:Label ID="Label3" runat="server" CssClass="labelClass" Text="Enter your surname">Surname:</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"  Width="296px" style="margin-left: 7px"></asp:TextBox>
            
             <br /> <br />

              <asp:Label ID="Label4" runat="server" CssClass="labelClass" Text="Enter your Email">Email:</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="290px" style="margin-left: 28px"></asp:TextBox>
            <br /> <br />

              <asp:Label ID="Label5" runat="server" CssClass="labelClass"  Text="Enter your password">Password:</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" TextMode="Password" Width="295px"></asp:TextBox>
            
        </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" CssClass="testbutton" OnClick="Button1_Click"  Text="Register" Height="52px" Width="123px" />
        </p>
    </form>
</body>
</html>
