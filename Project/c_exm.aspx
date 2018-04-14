<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_exm.aspx.cs" Inherits="c_exm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
         <div style="text-align:right;">
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           <ContentTemplate>
           <asp:Timer id="Timer1" runat="server" interval="1000" OnTick="Timer1_tick">
            </asp:Timer>
           <asp:Label ID="min" runat="server" Text="02" />
           <asp:Label ID="minlabel" runat="server" Text="min" />
           <asp:Label ID="colon" runat="server" Text=":" />
           <asp:Label ID="sec" runat="server" Text="20" />
           <asp:Label ID="seclabel" runat="server" Text="sec" />
            </ContentTemplate>
        </asp:UpdatePanel>--%>
        <table style="margin-left:1010px;"><tr><td><asp:Label ID="Label4" runat="server" Text="Label" style="margin-right:0px;"></asp:Label></td><td></td>
        <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td></tr></table>
        
        <table>
        <tr>
        <td align="left"><asp:Label ID="Label5" runat="server" Text="Welcome:-"></asp:Label></td>
        <td></td>
        <td><asp:Label ID="Label6" runat="server" Text="userid" Font-Bold="True" 
                Font-Size="Medium"></asp:Label></td>       
        </tr>
        </table>
        <table>
        <tr>
        <td><asp:Label ID="Label7" runat="server" Text="Selected Subject:-"></asp:Label></td>
        <td>&nbsp;</td>
        <td><asp:Label ID="Label8" runat="server" Text="subname" Font-Bold="True" 
                Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label9" runat="server" Text="Total Questions:-"></asp:Label></td>
                
        <td><asp:Label ID="Label10" runat="server" Text="5" Font-Bold="True" 
                Font-Size="Medium"></asp:Label></td>
        </tr> </table> 
        <table><br /><br /><tr>
        <td><asp:Label ID="Label11" runat="server" Font-Bold="True" 
                Font-Size="Medium" ForeColor="Red"></asp:Label></td>
        </tr>  
        </table>
        
             
    </div>
         <br /><br /><br />
             <fieldset>
             
             <table>
                 <tr><td>Q:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
                 
                <tr><td> 
                     <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ans" 
                          />
                 </td></tr>
                  <tr><td> 
                     <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ans" 
                           />
                      </td></tr>
                  <tr><td> 
                     <asp:RadioButton ID="RadioButton3" runat="server" GroupName="ans" 
                          />
                 </td></tr>
                  <tr><td> 
                     <asp:RadioButton ID="RadioButton4" runat="server" GroupName="ans" 
                          />
                 </td></tr>
                 
                 <tr><td><asp:Button ID="nxt" runat="server" Text="Next" onclick="nxt_Click" />
                 <asp:Button ID="Button1" runat="server" Text="Submit ans" onclick="submit_Click" />
                     <asp:Button ID="end" runat="server" Text="End Exam" onclick="end_Click" />
                     </td>
                 </tr>
                 
            </table>
             </fieldset>
             <br />
             <asp:Label ID="corrmsg" runat="server" Text="Total no of correct answers given:"></asp:Label>
             <asp:Label ID="correct" runat="server"   Text="0" ForeColor="Blue" Visible="False"/>
             <br />
             <asp:Label ID="wrongmsg" runat="server" Text="Total no of wrong answers given:"></asp:Label>
            <asp:Label ID="wrongans" runat="server"  Text="0" ForeColor="Red" Visible="False" />
             <asp:Label ID="timeout" runat="server" Text=""></asp:Label>
             
         
           
             <asp:Label ID="Label2" runat="server"></asp:Label>
             
         
           
    </div>
    <div id="footer" >
    <h3 style="text-align:center;">© OnlineExamination 2014. All Rights Reserved.</h3>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
