<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangki.aspx.cs" Inherits="ktra.Dangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 181px;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 181px;
            height: 26px;
        }
        .auto-style4 {
            width: 199px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="ĐĂNG KÍ"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Tài khoản"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTk" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtMk" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtnlmk" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Họ tên"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnDk" runat="server" Text="Đăng kí" OnClick="btnDk_Click" />
                </td>
                <td>
                    <asp:Label ID="lblThongbao" runat="server" Text="lable"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                            <asp:BoundField DataField="taikhoan" HeaderText="taikhoan" SortExpression="taikhoan" />
                            <asp:BoundField DataField="matkhau" HeaderText="matkhau" SortExpression="matkhau" />
                            <asp:BoundField DataField="nlmk" HeaderText="nlmk" SortExpression="nlmk" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DANGKIConnectionString %>" SelectCommand="SELECT * FROM [dangki]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
