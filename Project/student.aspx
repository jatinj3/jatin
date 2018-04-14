<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

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
            <center><h1 style="text-align:center">!!Welcome to Student Page!!</h1></center><br />
            <h3 style="text-align:left;"><u>Please read the instructions carefully</u>:-</h3>
            <h4>1)Each exam contains 5 questions.<br />
            2)Use Next button for next question & Submit ans button for correct ans.<br />
            3)Result is displayed after click on the End Exam button.<br />
            4)Click on Logged Out link to cancel the exam.<br />
            5)No time limitation.</h4>
            <p><h3 style="text-align:left;"><u>Select an Exam you want to give!</u></h3></p>

           <center><table>
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
             <tr><td></td>
             <td></td></tr>
             <tr>
             <td></td>
             <td></td>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Start" Width="81px" 
                     onclick="Button1_Click" /></td>
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
