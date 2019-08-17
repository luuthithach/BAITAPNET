<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="Qlthuvien.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Text="ĐĂNG KÝ TÀI KHOẢN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Tên đăng nhập</td>
                <td>
                    <asp:TextBox ID="txtDangnhap" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Mật khẩu</td>
                <td>
                    <asp:TextBox ID="txtMatkhau" runat="server" AutoPostBack="True" OnTextChanged="txtHo_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Ngày sinh"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlNgay" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlThang" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlThang_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlNam" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Giới tính"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rbtnGioiTinh" runat="server">
                        <asp:ListItem Value="true">Nam</asp:ListItem>
                        <asp:ListItem Value="false">Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Địa chỉ</td>
                <td>
                    <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style2">
                    Số điện thoại</td>
                <td>
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" Text="Đăng ký" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Label ID="lblThongBao" runat="server" Text="Thông báo"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
