<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="quanlythuvien.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Trang chủ</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyNhanVien.aspx">Quản lý nhân viên</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLySach.aspx">Quản lý sách</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/thontinmuontra.aspx">Thôngtinmuontra</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/DangNhap.aspx">Đăng nhập</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/DangKy.aspx">Đăng kí</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Masach" HeaderText="Masach" SortExpression="Masach" />
                <asp:BoundField DataField="Tensach" HeaderText="Tensach" SortExpression="Tensach" />
                <asp:BoundField DataField="Theloai" HeaderText="Theloai" SortExpression="Theloai" />
                <asp:BoundField DataField="Nhaxuatban" HeaderText="Nhaxuatban" SortExpression="Nhaxuatban" />
                <asp:BoundField DataField="Ngayxuatban" HeaderText="Ngayxuatban" SortExpression="Ngayxuatban" />
                <asp:BoundField DataField="Tacgia" HeaderText="Tacgia" SortExpression="Tacgia" />
                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                <asp:BoundField DataField="Giatien" HeaderText="Giatien" SortExpression="Giatien" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTHUVIENConnectionString8 %>" SelectCommand="SELECT * FROM [SACH]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
