using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt3
{
    public partial class bt3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtNLMatKhau_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // kiểm tra dữ liệu thành công
            {
                // thông báo thành công
                lblThongBao.Text = string.Format("Bạn {0} đã đăng ký thành công!", txtHoTen.Text);
                // các xử lý để luu thông tin đăng ký 
                //...
            }
        }

        protected void txtHoTen_TextChanged(object sender, EventArgs e)
        {

        }
    }
}