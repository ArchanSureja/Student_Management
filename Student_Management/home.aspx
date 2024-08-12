<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Student_Management.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="../css/signup.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Username : " ID="lblUsername"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbUsername" TextMode="SingleLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Password : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbPassword" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Role : "></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList runat="server" ID="rdlistOfRoles">
                            <asp:ListItem Enabled="true" Text="Student" Value="student" Selected="True"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="Professor" Value="professor"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="Admin" Value="admin"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                
            </table>
                        <asp:Button runat="server" OnClick="btnClicked" Text="Login" />
                   
                
                        <br />
            <br />
                   
                
                        Don't have an account? 
                        <asp:HyperLink runat="server" Target="_self" NavigateUrl="~/student_sign_up.aspx">Click here</asp:HyperLink> 
                        to create one.
                    
        </div>
    </form>
</body>
</html>
