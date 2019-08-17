<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="quanlythuvien.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style3 {
        width: 126px;
    }
    .auto-style4 {
        width: 117px;
    }
    .auto-style5 {
        text-align: left;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <p style="text-align: center">
    ĐĂNG NHẬP</p>
    <p style="text-align: center">
            <table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDangNhap" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btnDangnhap" runat="server" style="text-align: left" Text="Đăng nhập" OnClick="btnDangnhap_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td style="text-align: left">
                <asp:Label ID="lblThongBao" runat="server" Text="Thong bao"></asp:Label>
            </td>
        </tr>
    </table>
        </p>
    <div>
   </div>
    </form>
</body>
</html>
