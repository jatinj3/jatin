<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="maindiv">
     <div id="header" >
    <div class="h">
        <p><asp:Image ID="Image1"  Height="100px" runat="server" ImageUrl="~/img/spellcheck.png" />
        <h1 style="float:left; top: 38px; left: 432px; position: absolute; height: 63px; width: 340px; text-align: center;color:Lime;text-decoration:blink;">Online Examination</h1></p>
   
    </div>
    <div style="margin-left:900px;">
        <asp:Image ID="Image2" runat="server" style="margin-top:30px;" ImageUrl="~/img/facebook_32.png" />
        <asp:Image ID="Image3" runat="server" style="margin-top:30px;" ImageUrl="~/img/linkedin-32.png" />
        <asp:Image ID="Image4" runat="server"  style="margin-top:30px;" ImageUrl="~/img/twitter_32.png"/>
        </div>
        <div style="margin-left:1000px;margin-top:60px;">
        <h4>Logged-In|<a href="Index.aspx">Logged-Out</a></h4>
        </div>
        </div>
         <div id="content">
            <center><h1 style="text-align:center">!!Welcome to Admin Page!!</h1></center><br />
            <p><h3 style="text-align:left;"><u>Set an Exam!</u></h3 ></p>
            <table style="margin-left:850px;"><tr><td><a href="Default2.aspx" style="text-align:right;">Click here to see & update user details</a></td></tr></table>
           <center><table bgcolor="#3366FF">
            <tr>
                       <td><asp:Label ID="Label1" runat="server" Text="Label">Exam_Name</asp:Label></td>
                       <td></td>
            <td><asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>---------Select---------</asp:ListItem>
                 <asp:ListItem>C</asp:ListItem>
                 <asp:ListItem>C++</asp:ListItem>
                 <asp:ListItem>C#.NET</asp:ListItem>
                 <asp:ListItem>ASP.NET</asp:ListItem>
             </asp:DropDownList></td>
             </tr>
             <tr><td>Q-ID</td>
             <td></td><td><asp:TextBox ID="TextBox7" runat="server" Width="383px" Height="20px"></asp:TextBox></td></tr>
             <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Question"></asp:Label></td>
                <td></td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="383px" Height="20px"></asp:TextBox></td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Answer 1"></asp:Label></td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="383px"></asp:TextBox></td>
                </tr>
                 <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Answer 2"></asp:Label></td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="383px"></asp:TextBox></td>
                </tr>
                 <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Answer 3"></asp:Label></td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="383px"></asp:TextBox></td>
                </tr>
                 <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Answer 4"></asp:Label></td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="383px"></asp:TextBox></td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Correct Answer"></asp:Label></td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="383px"></asp:TextBox></td>
                </tr>
                <tr>
                <td></td>
                <td></td>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Text="Insert" Font-Bold="True" 
                        Width="140px" onclick="Button1_Click" />
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
             </center>
    </div>
    <div id="footer" >
    <h3 style="text-align:center;">© OnlineExamination 2014. All Rights Reserved.</h3>
    </div>
    </div>
    </form>
</body>
</html>
