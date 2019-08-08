<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="danhsachcomment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            width: 107px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="Tiêu đề"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTd" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Họ Tên"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Nội dung"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNoidung" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Button ID="btnNoidung" runat="server" OnClick="btnNoidung_Click" Text="Gửi nội dung" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDs" runat="server" Text="Danh sách comment" OnClick="btnDs_Click" />
                </td>
                <span id="EntryComment" runat="server"></span>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
