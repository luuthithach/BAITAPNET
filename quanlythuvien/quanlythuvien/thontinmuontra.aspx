<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thontinmuontra.aspx.cs" Inherits="quanlythuvien.thontinmuontra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Trang chủ</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyNhanVien.aspx">Quản lý nhân viên</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLySach.aspx">Quản lý sách</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/thontinmuontra.aspx">Thông tin mượn trả</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;</p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Tên độc giả:</td>
                    <td>
                        <asp:TextBox ID="txtTendocgia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ngày mượn:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNgaymuon" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ngày trả:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtNgaytra" runat="server"></asp:TextBox>
                    </td>
                 <tr>
                    <td class="auto-style2">Số lượng:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSoluong" runat="server"></asp:TextBox>
                    </td>
                </tr>
                </tr>
                <tr>
                    <td class="auto-style1">Trạng thái:</td>
                    <td>
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="false">Đang mượn</asp:ListItem>
                    <asp:ListItem Value="true">Đã trả</asp:ListItem>
                </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mã sách:</td>
                    <td>
                        <asp:TextBox ID="txtMasach" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </p>
        <p>

            <asp:Button ID="btnMuon" runat="server" Text="Mượn sách" />
        </p>
        <p>
            <asp:Label ID="lbThongbao" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/TrangChu.aspx">Tiếp tục mượn sách</asp:HyperLink>
            &nbsp;</p>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tendocgia" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Tendocgia" HeaderText="Tendocgia" ReadOnly="True" SortExpression="Tendocgia" />
                <asp:BoundField DataField="Ngaymuon" HeaderText="Ngaymuon" SortExpression="Ngaymuon" />
                <asp:BoundField DataField="Ngaytra" HeaderText="Ngaytra" SortExpression="Ngaytra" />
                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                <asp:CheckBoxField DataField="Trangthai" HeaderText="Trangthai" SortExpression="Trangthai" />
                <asp:BoundField DataField="Masach" HeaderText="Masach" SortExpression="Masach" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTHUVIENConnectionString9 %>" SelectCommand="SELECT * FROM [THONGTINMUONTRA]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
