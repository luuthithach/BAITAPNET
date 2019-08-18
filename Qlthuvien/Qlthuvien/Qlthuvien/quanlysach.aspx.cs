using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Qlthuvien
{
    public partial class quanlysach : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        
         SACH s = new SACH();
        chucnang cn = new chucnang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DoDuLieuVaoGridView();
            }
        }
    }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            s = LayDuLieuTuForm();
            cn = new chucnang();
            bool exist = cn.CheckMasach(s.Masach);
            if (exist)
            {
                lblThongBao.Text = "Tác Giả này đã có";
            }
            else
            {
                bool result = cn.InsertSACH(s);
                if (result)
                {
                    lblThongBao.Text = "Thêm thành công";
                    DoDuLieuVaoGridView();
                }
                else
                {
                    lblThongBao.Text = "Có lỗi";
                }
            }
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            s = LayDuLieuTuForm();
            bool result = cn.UpdateSach(s);
            if (result)
            {
                lblThongBao.Text = "Cập nhập thành công";
                DoDuLieuVaoGridView();
            }
            else
            {
                lblThongBao.Text = "Có lỗi";
            }
        }

      
         