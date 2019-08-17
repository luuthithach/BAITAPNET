using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlythuvien
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            chucnang cn = new chucnang();
            bool kq = cn.DangNhap (txtDangNhap.Text,txtMatKhau.Text);
            if (kq)
            {
                Session["Manv"] = txtDangNhap;
                Response.Redirect("trangChu.aspx");
            }
            else
            {
               lblThongBao.Text = "Sai tên đăng nhập hoặc mật khẩu!";
            }
        }
    }
}