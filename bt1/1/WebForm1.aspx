<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Label ID="Label1" runat="server" Text="email"></asp:Label>
        <br />
        <input id="txtemail" type="text" runat="server"/>
        <br />
        <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
        <br />
        <input id="txtpassword" type="password" runat="server"/><br />
        <br /><input id="btnlogin" type="submit" value="sign in now" runat="server" onserverclick ="btnlogin_Click" />
        <br />
        
        <div id="divinfo" runat="server">
        </div>
    </div>
    </form>
</body>
</html>
