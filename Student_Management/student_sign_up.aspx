<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_sign_up.aspx.cs" Inherits="Student_Management.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 318px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="../css/signup.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div></div>
     
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblName" Text="Name : " runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbName" TextMode="SingleLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblEmail" Text="Email : " runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbEmail" TextMode="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Email is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUsername" Text="Username : " runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="tbUsername" Display="Dynamic" ErrorMessage="Username is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPassword" Text="Password : " runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label runat="server" Text="Role : "></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList runat="server" ID="rdlistOfRoles" AutoPostBack="True" OnSelectedIndexChanged="rdlistOfRoles_SelectedIndexChanged">
                        <asp:ListItem Text="Student" Value="student" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Professor" Value="professor"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <!-- Branch and Semester for Students -->
            <tr id="studentFields">
                <td class="auto-style2">
                    <asp:Label runat="server" ID="lblBranch" Text="Branch : "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlBranches" runat="server">
                        <asp:ListItem Selected="True" Text="Please Select your Branch" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="CE" Value="ce"></asp:ListItem>
                        <asp:ListItem Text="IT" Value="it"></asp:ListItem>
                        <asp:ListItem Text="CH" Value="ch"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDDLBranch" runat="server" ControlToValidate="ddlBranches" Display="Dynamic" ErrorMessage="Branch is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr id="studentFields">
                <td class="auto-style2">
                    <asp:Label runat="server" ID="lblSemester" Text="Semester : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="tbSemester" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSem" runat="server" ControlToValidate="tbSemester" Display="Dynamic" ErrorMessage="Semester is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Join Date for Professors -->
            <tr id="professorField" style="display:none;">
                <td class="auto-style2">
                    <asp:Label runat="server" ID="lblJoinDate" Text="Join Date : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="tbJoinDate" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvJoinDate" runat="server" ControlToValidate="tbJoinDate" Display="Dynamic" ErrorMessage="Join Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Common Date of Birth Field -->
            <tr>
                <td class="auto-style2">
                    <asp:Label runat="server" ID="lblDob" Text="Date Of Birth : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="tbDob" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDob" runat="server" ControlToValidate="tbDob" Display="Dynamic" ErrorMessage="DOB is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

        <asp:Button runat="server" Text="SignUp" OnClick="btnClicked" ID="Button1"/>
        <br />
        Already have an account? 
        <asp:HyperLink runat="server" Target="_self" NavigateUrl="~/home.aspx" ID="HyperLink1">Click here</asp:HyperLink> 
        to login.

        <br />
        <asp:ValidationSummary ID="vsSignup" runat="server" ForeColor="Red" HeaderText="Please Check Following : " />
        <p></p>
    </form>
</body>
</html>
