<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Demo.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="maindiv">
    <div id="header" >
    <div class="h">
        <p><asp:Image ID="Image1"  Height="100px" runat="server" ImageUrl="~/img/spellcheck.png" />
        <h1 style="float:left; top: 38px; left: 432px; position: absolute; height: 63px; width: 340px; text-align: center;">Online Exam</h1></p>
    </div>
    <div class="h" style="margin-left:417px;"></div>
    <div class="h">
        <asp:Image ID="Image2" runat="server" style="margin-top:40px;" ImageUrl="~/img/facebook_32.png" />
        <asp:Image ID="Image3" runat="server" style="margin-top:40px;" ImageUrl="~/img/linkedin-32.png" />
        <asp:Image ID="Image4" runat="server"  style="margin-top:40px;" ImageUrl="~/img/twitter_32.png"/>
    <table>
                    <tr>
                        <td>
                            
                           <h3> Email Address</h3>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <h3>Password</h3>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Log-In" onclick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Register Here" OnClick="Button2_Click" />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    </table>
    </div>
    <div id="mnu">
    <ul>
    <li><a href="Default.aspx">Home</a></li>
    <li><a href="Exams.aspx">Exams</a></li>
    <li><a href="ContactUs.aspx">Contact Us</a></li>
    <li><a href="AboutUs.aspx">About Us</a></li>
    </ul>
    </div>
    </div>
    
    <div id="content" >
    </div>
    <div id="footer" >
    
    </div>
    </div>
    </form>
</body>
</html>
