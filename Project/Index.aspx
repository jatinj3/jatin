<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center">!!Welcome to Online Examination!!</h1>
    <p><h3><u>Take a Free Practice Exam!</u></h3></p>
    <p><h4>Online Examination is a world-wide provider of free, online practice exams. We exist to serve the education and testing markets and we're proud to help you pass your upcoming exams. Feel free to surf our site, and if you have any questions, please contact us.</h4></p>
    <div style="text-align:center; margin-top:10px;">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <asp:AdRotator ID="AdRotator1" runat="server" height="400px" width="900px" AdvertisementFile="~/advertise.xml"/>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
</Triggers>
</asp:UpdatePanel>
<asp:Timer ID="Timer1" runat="server" Interval="5000">
</asp:Timer>
</div>
</asp:Content>

