<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YemekWebForm.aspx.cs" Inherits="InternetBased.YemekWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
            h2 {
	font-family: Arial, sans-serif;
	font-size: 24px;
	color: #369;
	padding-bottom: 4px;
	border-bottom: 1px solid #999;
    float:none;
}
            p { 
    text-indent: 15px; 
            }
        </style>    
        <style>
            p { 
    text-indent: 15px; 
            }
        </style>    
    <title></title>
</head>
<body style="background-image:url('Loginimage/yemek2.jpg')">
  
    <form id="form1" runat="server">
        <h2><b>FOOD LIST DAILY</b></h2>
           
           
            
        
        <p>
            &nbsp;</p>
        <p>
        <style>
            .labelClass
{
	font-weight: bold;

}
a.one:link {color:#ff0000;}
a.one:visited {color:#0000ff;}
a.one:hover {color:#ffcc00;}


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
                margin-left: 445px;
                margin-right: 0px;
                margin-top: 37px;
            }
            p { 
    text-indent: 35px; 

            }
        </style>  
            <i>Üniversitemizin yerleşkelerindeki yemekhanelerde  öğrencilere  kaliteli yemek verilmektedir. <br />Bu hizmeti gerçekleştirirken en önemli faktörün insan sağlığı olduğunun bilincinde olup, öğrencimize yönelik sağlıklı ve hijyenik ortamı sağlayan, en iyi koşullarda hazırlanmış,<br /> kişinin günlük alması gereken besin öğelerinden oluşan menü sunulmaktadır.

Yüklenici firma tarafından öğlen ve akşam olmak üzere iki öğün ve her öğünde dört çeşit yemek olarak verilmektedir. Yemek hizmetleri denetlemeleri Başkanlığımız bünyesinde sık sık yapılmaktadır. Bu denetim ve kontroller yemek pişirme ve hazırlamada kullanılan hammadde ve malzemelerin alımından başlayıp, mutfakta çalışan personelin, kullanılan malzemelerin, hijyen ve temizliğine kadar yapılmaktadır.</i>

</p>
  <a href ="examples/index.html">Rate With Stars </a>
     <div>      
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Unlike" runat="server" Text="Dislike" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Like" runat="server" cssClass="labelClass" Text="Like" ForeColor="#3366CC"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" cssClass="testbutton" Text="Learn Todays Food List" Height="61px" Width="177px" ForeColor="Maroon" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" cssClass="testbutton" runat="server" OnClick="Button2_Click" Text="Like" style="margin-top: 0px; margin-bottom: 17px;" Width="86px" Height="50px" />
            <asp:Button ID="Button3" runat="server"  cssClass="testbutton" OnClick="Button3_Click" Text="Dislike" Height="44px" Width="87px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<br />
   </div>     
           
           
            
        
    </form>
  </body>
</html>
