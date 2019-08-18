using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Qlthuvien
{
    public partial class quanlynhanvien : System.Web.UI.Page
    {
        public NhanVienController NhanVienctl;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                getAllNhanVien();
            }
        }

        public void getAllNhanVien()
        {
            NhanVienController NhanVienCtl = new NhanVienController();
            DataTable dt = new DataTable();
            dt = NhanVienCtl.GetAllNhanVien();
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void btn_Them_Click(object sender, EventArgs e)
        {
            NhanVienController sachCtl = new NhanVienController();

            NhanVienInfo info = layDuLieuForm();
            bool kt = sachCtl.InsertNhanVien(info);

            if (kt == true)

            {
                lblThongbao.Text = "Thêm thành công";
                getAllNhanVien();

                txtMa.Text = "";
                txtTen.Text = "";
                txtNS.Text = "";
                txtGT.Text = "";
                txtDC.Text = "";
                txtSDT.Text = "";
                txtMa.Focus();
            }
                else
                {
                    lbTB.Text = "Thêm thất bại";
                }
        }

        protected void btn_Sua_Click(object sender, EventArgs e)
        {
                NhanVienInfo nv = layDuLieuForm();
                NhanVienController sanPham = new NhanVienController();
                bool kt = sanPham.UpdateNhanVien(nv);
                if (kt)
                {
                    lbTB.Text = "Cập nhật thành công";

                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
                }
                else
                    lbTB.Text = "Cập nhật thất bại";  
        }

        
        public void doDuLieu(NhanVienInfo info)
        {
            txtMa.Text = info.MaNV;
            txtTen.Text = info.TenNV;
            txtNS.Text = info.NgaySinh;
            txtGT.Text = info.GioiTinh;
            txtDC.Text = info.DiaChi;
            txtSDT.Text = info.SDT;
        }

       

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string txtMa = GridView1.SelectedRow.Cells[0].Text;
            NhanVienController sachCtl = new NhanVienController();

            NhanVienInfo info = sachCtl.SelectNhanVien_ByMaNV(txtMa);
            if (info != null)
            {
                doDuLieu(info);
            }
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string maNV = GridView1.Rows[e.RowIndex].Cells[0].Text;
            NhanVienController NhanVienctl = new NhanVienController();
            bool kt = NhanVienctl.DeleteNhanVien(maNV);
            if (kt)
            {
                lbTB.Text = "Xóa Thành Công ";
                getAllNhanVien();
            }
            else
                lbTB.Text = "Xóa Thất Bại";
        }

        }
    }
