<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Assignment.client.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/login.css" />
    <title></title>
</head>

<body>
    <form id="form1" runat="server">

        <img src="../img/logo.png" alt="LOGO" class="logo" />

        <img src="../img/account/ufo-flying.png" alt="UFO" class="ufo" />

        <br />
        <br />
        <br />
        <br />
        <br />
        <img src="../img/account/galaxy.png" alt="GALAXY" class="topic" />

        <br />
        <br />
        <p class="label">
            Username :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="username" runat="server" class="box"></asp:TextBox>
        </p>

        <p class="label">
            Password :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="password" runat="server" class="box"></asp:TextBox><br />
            <asp:HyperLink ID="forgetpass" runat="server" class="forget">Forget Password?</asp:HyperLink>
        </p>

        <asp:Button ID="login" runat="server" Text="Login" class="submitbtn" />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <p class="account">
            Do not have account? 
        <asp:HyperLink ID="signin" runat="server" class="hyper" NavigateUrl="~/client/Register.aspx">Sign In</asp:HyperLink>
        </p>

    </form>
</body>
</html>
