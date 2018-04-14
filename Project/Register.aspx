<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" ClientIDMode="Static">
 <script type="text/javascript" language="javascript">
     function Validate1(source, args) {
         var s = document.getElementById('TextBox5').value;
         if (s.length==10) {

             return args.IsValid = true;


         }
         else {
             return args.IsValid = false;

         }
     }
        </script>

    <h1 style="text-align:center">!!Welcome to Registration Page!!</h1>
<center><table bgcolor="#3399FF" style="font-size:larger">
    <tr>
    <td>First Name</td>
    <td></td>
    <td>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red" 
             ValidationGroup="Submit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>Last Name</td>
    <td>
        &nbsp;</td>
    <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red" 
             ValidationGroup="Submit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>Gender</td>
    <td></td>
    <td><asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" />
    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" /></td>
    </tr>
    <tr>
    <td>D.O.B</td>
    <td></td>
    <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" 
            ImageUrl="~/img/calender_alt_month.ico" onclick="ImageButton1_Click" 
            CausesValidation="false" Width="20px" />
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar></td>
    </tr>
    <tr>
    <td>Email Address</td>
    <td></td>
    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Plz Enter a Valid Address" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td>Password</td>
    <td></td>
    <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#FF3300" 
             ValidationGroup="Submit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>Confirm Password</td>
    <td></td>
    <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
            ErrorMessage="Password doesn't match " ForeColor="#004000" ></asp:CompareValidator>
        </td>
    </tr>
    <tr>
    <td>Mobile No.</td>
    <td></td>
    <td><asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" 
            
             ClientValidationFunction="Validate1" ValidateEmptyText="True" 
            SetFocusOnError="True"></asp:CustomValidator>
        </td>
    </tr>
    
    <tr>
    <td>Qualification</td>
    <td></td>
    <td><asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>10th</asp:ListItem>
        <asp:ListItem>12th</asp:ListItem>
        <asp:ListItem>UG</asp:ListItem>
        <asp:ListItem>PG</asp:ListItem>
        </asp:CheckBoxList></td>
        
    </tr>
    <tr>
    <td>Upload Photo</td>
    <td></td>
    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
    </tr>
    <tr>
    <td></td>
    <td></td>
    <td><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="style1" 
            Width="93px" onclick="Button1_Click" 
            ValidationGroup="Submit" CausesValidation="true" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" 
             Width="93px" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>   
    </tr>
    </table></center>
   <%-- <div style="float:right;margin-top:0px;margin-left:100px;margin-bottom:100px;" >
    <table>
    <tr>
    <td>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="Registration_ID" 
            onrowdeleting="GridView2_RowDeleting"  
            onrowcancelingedit="GridView2_RowCancelingEdit" 
            onrowediting="GridView2_RowEditing" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" 
            onrowupdating="GridView2_RowUpdating">
            <Columns>
            <asp:TemplateField HeaderText="Registration_ID">
            <ItemTemplate>
                <asp:Label runat="server" ID="lblid" Text='<%# Eval("Registration_ID") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="F_Name">
            <ItemTemplate>
            <asp:Label runat="server" ID="Fnm" Text='<%# Eval("Candidate_FirstName") %>'></asp:Label>
                
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
                <asp:Button ID="btnedit" runat="server" CommandName="edit" Text="Edit" CausesValidation="false" />
                <asp:Button runat="server" ID="btndelete" CommandName="delete" Text="Delete" CausesValidation="false" />
            </ItemTemplate>
            <EditItemTemplate>
            
            <asp:Button runat="server" ID="btnupdate" CommandName="update" 
                    CausesValidation="false" Text="Update" />
            <asp:Button runat="server" ID="btncancel" CommandName="cancel" 
                    CausesValidation="false" Text="Cancel" />
            
            </EditItemTemplate>
            <EditItemTemplate>
            <asp:Button runat="server" ID="btnupdate" CommandName="update" CausesValidation="false" Text="Update" />
            <asp:Button runat="server" ID="btncancel" CommandName="cancel" CausesValidation="false" Text="Cancel" />
            </EditItemTemplate>
            </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:BoundField DataField="Registration_ID" HeaderText="Reg_ID" />
                <asp:BoundField DataField="Candidate_FirstName" HeaderText="F_Name" 
                    SortExpression="Candidate_FirstName" />
                <asp:BoundField DataField="Candidate_LastName" HeaderText="L_Name" 
                    SortExpression="Candidate_LastName" />
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Image">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        
        </td>
    </tr>    
    </table>
    </div>--%>
</asp:Content>


