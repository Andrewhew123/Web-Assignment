<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Assignment.client.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/register.css" />
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
        <p class="username">
            Username :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="username" runat="server" class="box"></asp:TextBox>
        </p>

        <p class="email">
            Email :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="email" runat="server" class="box" placeholder="abc@gmail.com"></asp:TextBox><br />
        </p>

        <p class="password">
            Password :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="password" runat="server" class="box" placeholder="abcd1234"></asp:TextBox>
            <p class="confirm">Password Should Contain at least 8 Characters</p>
        </p>

        <p class="confirmpassword">
            Confirm Password :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="confirmpassword" runat="server" class="box"></asp:TextBox><br />
        </p>

        <asp:Button ID="register" runat="server" Text="Register" class="btn" />

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
            Already have account? 
        <asp:HyperLink ID="login" runat="server" class="hyper" NavigateUrl="~/client/Login.aspx">Log In</asp:HyperLink>
        </p>

    </form>
</body>
</html>
