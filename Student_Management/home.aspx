<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Student_Management.WebForm1" %>

<!DOCTYPE html>

<html>
<head>
    <title>login page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Username : " ID="lblUsername" ></asp:Label>
            <asp:TextBox runat="server" ID="tbUsername" TextMode="SingleLine" ></asp:TextBox>
            <br />

            <asp:Label runat="server" Text="password : "></asp:Label>
            <asp:TextBox runat="server" ID="tbPassword" TextMode="Password"></asp:TextBox>
               <br/>
            <asp:RadioButtonList runat="server" ID="rdlistOfRoles" >
                <asp:ListItem Enabled="true" Text="Student" Value="student" Selected="True"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="Professor" Value="professor"></asp:ListItem>
                <asp:ListItem Enabled="true" Text="Admin" Value="admin"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button runat="server" OnClick="btnClicked" Text="login"/>
            <br />
           <asp:HyperLink runat="server" Target="_self" NavigateUrl="~/student_sign_up.aspx" >don't have account click here to create</asp:HyperLink>
        </div>
    </form>
</body>
</html>

