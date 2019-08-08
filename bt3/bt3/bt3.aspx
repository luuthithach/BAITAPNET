<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bt3.aspx.cs" Inherits="bt3.bt3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
        <asp:Button ID="Button1" runat="server" Text="ĐĂNG KÝ PHÒNG" Width="418px" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Họ Tên"></asp:Label>
        <asp:TextBox ID="txtHoTen" runat="server" style="margin-left: 51px" Width="118px" OnTextChanged="txtHoTen_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ErrorMessage="Nhập họ tên"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cơ quan"></asp:Label>
        <asp:TextBox ID="txtCoQuan" runat="server" style="margin-left: 47px" Width="117px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCoQuan" runat="server" ErrorMessage="Nhập cơ quan"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged" style="margin-left: 65px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Nhập email"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Mật khẩu"></asp:Label>
        <asp:TextBox ID="txtMatKhau" runat="server" style="margin-left: 42px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
        <asp:TextBox ID="txtNLMatKhau" runat="server" Height="32px" OnTextChanged="txtNLMatKhau_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNLMatKhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="cmvmatKhau" runat="server" ErrorMessage="Mật khẩu không khớp"></asp:CompareValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Ngày check in"></asp:Label>
        <asp:TextBox ID="txtCheckin" runat="server" style="margin-left: 14px"></asp:TextBox>
        <asp:CompareValidator ID="cmvCheckin" runat="server" ErrorMessage="Nhập định dạng ngày"></asp:CompareValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Số ngày ở"></asp:Label>
        <asp:TextBox ID="txtSoNgay" runat="server" style="margin-left: 41px"></asp:TextBox>
        <asp:CompareValidator ID="cmvSoNgay" runat="server" ErrorMessage="Nhập con số ngày"></asp:CompareValidator>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Loại phòng"></asp:Label>
        <asp:DropDownList ID="cbxLoaiPhong" runat="server" style="margin-left: 30px">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" style="margin-left: 62px" Text="Đăng ký" />
        <br />
        <asp:Label ID="lblThongBao" runat="server" Text="Thông báo"></asp:Label>
        <asp:ValidationSummary ID="svTomTatLoi" runat="server" />
    
    </div>
    </form>
</body>
</html>
