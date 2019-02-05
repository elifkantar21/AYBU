<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InternetBased.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url('Loginimage/54088672-healthy-food-background-studio-photo-of-different-fruits-and-vegetables-on-white-wooden-table-high-r.jpg')">
    <form id="form1" runat="server">
        <div style="height: 247px">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <style>
    .textbox { 
   border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 230px;
   }
 
   .testbutton {
  font-family: 'arial black';
  color:lightcoral;
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
  margin-left: 162px;
                }
   .label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color:red;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
                    margin-left: 332px;
                }
</style>
       <div style="height: 25px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Email"  cssClass="textbox" runat="server" OnTextChanged="TextBox1_TextChanged" Width="194px"></asp:TextBox>
        </div>
            <br />
        <div style="height: 31px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Password" cssClass="textbox" TextMode="Password" runat="server" OnTextChanged="TextBox1_TextChanged" Width="195px"></asp:TextBox>
        </div>
             <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" cssClass=" testbutton" runat="server" OnClick="Button1_Click" Text="Login" Height="41px" Width="106px" />
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" CssClass="label" runat="server" Height="47px" Width="150px"></asp:Label>
            </p>
    </form>
</body>
</html>
