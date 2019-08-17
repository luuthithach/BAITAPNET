<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlynhanvien.aspx.cs" Inherits="quanlythuvien.quanlynhanvien" %>

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
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Muon-Tra.aspx">Quản lý mượn-trả</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server">Trợ Giúp</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
    
        QUẢN LÝ NHÂN VIÊN<br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Mã nhân viên</td>
                <td>
                    <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Tên nhân viên</td>
                <td>
                    <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Giới tính</td>
                <td>
                    <asp:TextBox ID="txtGT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Địa chỉ</td>
                <td>
                    <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">SĐT</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="btn_Them" runat="server" Text="Thêm" OnClick="btn_Them_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Sua" runat="server" Text="Sửa" OnClick="btn_Sua_Click" />
        <br />
        <br />
        <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tennv" DataSourceID="SqlDataSource2" OnRowDeleting="GridView1_RowDeleting1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="Manv" HeaderText="Manv" SortExpression="Manv" />
                <asp:BoundField DataField="Tennv" HeaderText="Tennv" SortExpression="Tennv" ReadOnly="True" />
                <asp:BoundField DataField="Ngaysinh" HeaderText="Ngaysinh" SortExpression="Ngaysinh" />
                <asp:BoundField DataField="Gioitinh" HeaderText="Gioitinh" SortExpression="Gioitinh" />
                <asp:BoundField DataField="Điachi" HeaderText="Điachi" SortExpression="Điachi" />
                <asp:BoundField DataField="Sdt" HeaderText="Sdt" SortExpression="Sdt" />

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLTHUVIENConnectionString3 %>" ProviderName="<%$ ConnectionStrings:QLTHUVIENConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [NHANVIEN]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
