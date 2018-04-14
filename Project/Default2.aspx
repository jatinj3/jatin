<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Demo.css" rel="stylesheet" type="text/css" />
    <%--<style type="text/css">
        .style2
        {
            z-index: 1;
            left: 413px;
            top: 148px;
            position: absolute;
            height: 368px;
            width: 516px;
        }
    </style>--%>
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
    <%--<form id="form1" runat="server">
    <div id="maindiv">
    <div id="header" >
    <div class="h">
        <p><asp:Image ID="Image1"  Height="100px" runat="server" ImageUrl="~/img/spellcheck.png" />
        <h1 style="float:left; top: 38px; left: 476px; position: absolute; height: 63px; width: 296px; text-align: center;">Online Exam</h1></p>
    </div>
    <div class="h"></div>
    <div class="h" style="margin-left:900px; ">
        <asp:Image ID="Image2" runat="server" style="margin-top:40px;" ImageUrl="~/img/facebook_32.png" />
        <asp:Image ID="Image3" runat="server" style="margin-top:40px;" ImageUrl="~/img/linkedin-32.png" />
        <asp:Image ID="Image4" runat="server"  style="margin-top:40px;" ImageUrl="~/img/twitter_32.png"/>
    </div>--%>
    <div id="content">
    <br />
    <br />
    
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <div style="float:right;margin-top:0px;margin-left:10px;margin-bottom:100px;margin-right:700px;" >
   <center> <table>
    
    <tr>
    
    <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="Registration_ID" 
            onrowdeleting="GridView1_RowDeleting"  
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowediting="GridView1_RowEditing" 
            onselectedindexchanged="GridView1_SelectedIndexChanged2" onrowupdating="GridView1_RowUpdating">
            <Columns>
            <asp:TemplateField HeaderText="Registration_ID">
            <ItemTemplate>
                <asp:Label runat="server" ID="lblid" Text='<%# Eval("Registration_ID") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="F_Name">
            <ItemTemplate>
            <asp:Label runat="server" ID="Fname" Text='<%# Eval("Candidate_FirstName") %>'></asp:Label>
            </ItemTemplate>
            
            
            <EditItemTemplate>
            <asp:TextBox ID="txtfname" Text='<%# Eval("Candidate_FirstName") %>' runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="L_Name">
            <ItemTemplate>
            <asp:Label runat="server" ID="Lname" Text='<%# Eval("Candidate_LastName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtlname" Text='<%# Eval("Candidate_LastName") %>' runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="D.O.B">
            <ItemTemplate>
            <asp:Label runat="server" ID="dob" Text='<%# Eval("Candidate_DOB") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo">
            <ItemTemplate>
            <asp:Image runat="server" ID="img" ImageUrl='<%# Eval("Photo") %>' Width="90px" Height="90px"></asp:Image>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnedit" runat="server" CommandName="edit" Text="Edit" />
                <asp:Button runat="server" ID="btndelete" CommandName="delete" Text="Delete" />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:Button runat="server" ID="btnupdate" CommandName="update" Text="Update" />
            <asp:Button runat="server" ID="btncancel" CommandName="cancel" Text="Cancel" />
            </EditItemTemplate>
            </asp:TemplateField>
            </Columns>
           <%-- <Columns>
                <asp:BoundField DataField="Registration_ID" HeaderText="Reg_ID" />
                <asp:BoundField DataField="Candidate_FirstName" HeaderText="F_Name" 
                    SortExpression="Candidate_FirstName" />
                <asp:BoundField DataField="Candidate_LastName" HeaderText="L_Name" 
                    SortExpression="Candidate_LastName" />
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Image">
                </asp:ImageField>
            </Columns>--%>
        </asp:GridView>

        </td>
    
    </tr>
    
    
    </table></div>
    </div>
    <div id="footer"></div>
    </div>
    </div>
    </form>
</body>
</html>
