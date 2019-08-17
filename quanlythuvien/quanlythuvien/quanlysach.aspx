<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlysach.aspx.cs" Inherits="quanlythuvien.quanlysach" %>

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
                <td colspan="3" style="font-size: large">
                    <asp:Label ID="Label1" runat="server" Text="QUẢN LÝ SÁCH"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Mã sách"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMaSach" runat="server" Width="174px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMaSach" runat="server" ControlToValidate="txtMaSach" ErrorMessage="Không được để trống ô này"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Tên sách"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTenSach" runat="server" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenSach" runat="server" ControlToValidate="txtTenSach" ErrorMessage="Không được để trống ô này"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Nhà xuất bản"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlNhaXuatBan" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenNhaXB" DataValueField="MaNhaXB" Height="16px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLThuVienConnectionString %>" SelectCommand="SELECT [MaNhaXB], [TenNhaXB] FROM [NhaXuatBan]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Mô tả"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMoTa" runat="server" Width="172px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMoTa" runat="server" ControlToValidate="txtMoTa" ErrorMessage="Không được để trống ô này"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Loại sách"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlLoaiSach" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenLoaiSach" DataValueField="MaLoai">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLThuVienConnectionString %>" SelectCommand="SELECT * FROM [LoaiSach]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Tác giả"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTacGia" runat="server" DataSourceID="SqlDataSource3" DataTextField="TenTacGia" DataValueField="MaTacGia">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLThuVienConnectionString %>" SelectCommand="SELECT * FROM [TacGia]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Số lượng"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSoLuong" runat="server" Width="172px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoLuong" runat="server" ControlToValidate="txtSoLuong" ErrorMessage="Không được để trống ô này"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSoLuong" runat="server" ControlToValidate="txtSoLuong" ErrorMessage="Nhập số cho ô này" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="lblThongBao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
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
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLTHUVIENConnectionString6 %>" SelectCommand="SELECT * FROM [SACH]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
