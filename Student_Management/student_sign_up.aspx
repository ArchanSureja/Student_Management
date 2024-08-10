<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_sign_up.aspx.cs" Inherits="Student_Management.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="lblName" Text="Name : " runat="server"></asp:Label>
              <asp:TextBox ID="tbName" TextMode="SingleLine" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="ddlBranches" runat="server" >
                <asp:ListItem Selected="True" Text="Please Select your Branch" Value="-1"></asp:ListItem>
                <asp:ListItem  Text="CE" Value="ce"></asp:ListItem>
                <asp:ListItem  Text="IT" Value="it"></asp:ListItem>
                <asp:ListItem  Text="CH" Value="ch"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label runat="server" ID="lblDob" Text="Date Of Birth : "></asp:Label>
            <asp:TextBox runat="server" ID="tbDob" TextMode="Date" ></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblSemester" Text="Semester : "></asp:Label>
            <asp:TextBox runat="server" ID="tbSemester" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Button runat="server" Text="submit" OnClick="btnClicked"/>

        </div>
     
    </form>
</body>
</html>
