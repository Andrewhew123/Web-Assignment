<%@ Page Language="C#" MasterPageFile="ClientMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Web_Assignment.client.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="userprofile" runat="Server">

    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="../img/user-avatar.png" alt="AVATAR" width="30" height="30" class="d-inline-block align-text-top" />
                Account Settings
            </a>
        </div>
    </nav>

    <div>
        <p class="maintitle">Account Settings</p>
    </div>

    <div>
        <p class="subtitle">Account Information</p>
    </div>

    <div class="border">
        <p class="label">
            Account ID<br />
            <asp:Label ID="AccountID" runat="server" class="id">UserID</asp:Label>
        </p>
    </div>

    <div>
        <p class="maintitle">Personal Information</p>
    </div>

    <div>
        <p class="subtitle">Personal Details</p>
        <p class="des">Manage your personal information and region's details.</p>
    </div>

    <div class="border">
        <p class="label">
            Username<br />
            <asp:TextBox ID="name" runat="server" class="text"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Edit" class="editbtn"/>
        </p>
        <p class="label">
            Email<br />
            <asp:TextBox ID="TextBox2" runat="server" class="text"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Edit" class="editbtn"/>
        </p>
        <p class="label">
            Gender<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" class="profiledropdown">
                <asp:ListItem>Default</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="label">
            Region<br />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="False" class="profiledropdown">
                <asp:ListItem>Default</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Korea</asp:ListItem>
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>Singapore</asp:ListItem>
                <asp:ListItem>Thailand</asp:ListItem>
            </asp:DropDownList>
        </p>
    </div>

    <div>
        <p class="subtitle">Password</p>
        <p class="des">
            For your security propose, we highly recommend that you choose a unique password that you don't use for any other account. 
            Your password must contain at least 8 characters
        </p>
    </div>

    <div class="border">
        <p class="label">
            Current Password :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="currentpass" runat="server" class="passwordtext"></asp:TextBox>
        </p>
        <p class="label">
            New Password :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="newpass" runat="server" class="passwordtext"></asp:TextBox>
        </p>
        <p class="label">
            Confirm Password :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="confirmpass" runat="server" class="passwordtext"></asp:TextBox>
        </p>
        <asp:Button ID="changepassword" runat="server" Text="Save Changes" class="btnsubmit" Style="background-color: #9F76AE; color: white;" />
    </div>

    <div class="maintitle">
        <p>Account Deletion</p>
    </div>

    <div class="border">
        <p class="delsubtitle">Delete Your Account</p>
        <table>
            <tr class="deldes">
                <td>Click "DELETE ACCOUNT" to permanently deleting your Galaxy Games account including all personal 
                        information, games purchases, game progress, account history and other related information. 
                        Once your Galaxy Games account is deleted, your won't able to request any refund or return.</td>
                <td>
                    <asp:Button ID="delete" runat="server" Text="DELETE ACCOUNT" class="delbtn" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
